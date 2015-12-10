require_relative 'spec_helper'


describe '_Pages Directory Generator' do

  it 'should create all the write files in the right places' do
    visit '/level-zero.html'
    expect(page).to have_css 'span#level-name', :text => 'Zero'
    expect(page).to have_css 'h1#title', :text => 'Generic Page Title'

    visit '/level-one/index.html'
    expect(page).to have_css 'span#level-name', :text => 'One'
    expect(page).to have_css 'h1#title', :text => 'Generic Page Title'

    visit '/level-one/level-two/index.html'
    expect(page).to have_css 'span#level-name', :text => 'Two'
    expect(page).to have_css 'h1#title', :text => 'Generic Page Title'

    visit '/level-one/level-two/top-level.html'
    expect(page).to have_css 'span#level-name', :text => 'Top'
    expect(page).to have_css 'h1#title', :text => 'Generic Page Title'
  end

  it 'should still properly handle page content' do
    visit '/level-one/level-two/top-level.html'
    expect(page).to have_css 'p#custom-content', :text => 'CUSTOM'
  end

  it 'should not create a _pages directory in _site' do
    expect(File.exist?('_site/_pages')).to be_falsey

    visit '/_pages'
    expect(page.status_code).to eq 404

    visit '/_pages/level-zero.html'
    expect(page.status_code).to eq 404
  end

  it 'should include the zero item test content' do
    visit '/level-zero.html'
    expect(page).to have_css 'p.zero-test', :text => 'success'
  end

  it 'should render index.php properly' do
    visit '/index.html'
    expect(page).to have_css 'div#home-test', :text => 'home success'
  end

end
