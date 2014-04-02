require_relative 'spec_helper'


describe '_Pages Directory Generator' do

  it 'should create all the write files in the right places' do
    visit '/level-zero.html'
    page.should have_css 'span#level-name', :text => 'Zero'
    page.should have_css 'h1#title', :text => 'Generic Page Title'

    visit '/level-one/index.html'
    page.should have_css 'span#level-name', :text => 'One'
    page.should have_css 'h1#title', :text => 'Generic Page Title'

    visit '/level-one/level-two/index.html'
    page.should have_css 'span#level-name', :text => 'Two'
    page.should have_css 'h1#title', :text => 'Generic Page Title'

    visit '/level-one/level-two/top-level.html'
    page.should have_css 'span#level-name', :text => 'Top'
    page.should have_css 'h1#title', :text => 'Generic Page Title'
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

  it 'should include the zero item test content' do
    visit '/level-zero.html'
    page.should have_css 'p.zero-test', :text => 'success'
  end

  it 'should render index.php properly' do
    visit '/index.html'
    page.should have_css 'div#home-test', :text => 'home success'
  end

end
