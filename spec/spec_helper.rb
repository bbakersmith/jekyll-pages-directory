require 'capybara/rspec'
require 'rack/file'


RSpec.configure do |config|
  config.include Capybara::DSL

  config.before :suite do
    system 'jekyll build'
    output_dir = "#{File.dirname(__FILE__)}/../_site"
    Capybara.app = Rack::Directory.new(output_dir)
  end
end
