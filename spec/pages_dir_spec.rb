require_relative 'spec_helper'


describe '_Pages Directory Generator' do

  it 'should create all the write files in the right places' do
    visit '/level-zero.html'
    page.should have_css 'span#level-name', :text => 'Zero'

    visit '/level-one/index.html'
    page.should have_css 'span#level-name', :text => 'One'

    visit '/level-one/level-two/index.html'
    page.should have_css 'span#level-name', :text => 'Two'

    visit '/level-one/level-two/top-level.html'
    page.should have_css 'span#level-name', :text => 'Top'
  end

  it 'should still properly handle page content' do
    visit '/level-one/level-two/top-level.html'
    page.should have_css 'p#custom-content', :text => 'CUSTOM'
  end

  it 'should not create a _pages directory in _site' do
    File.exist?('_site/_pages').should == false

    visit '/_pages'
    page.status_code.should == 404

    visit '/_pages/level-zero.html'
    page.status_code.should == 404
  end

end
