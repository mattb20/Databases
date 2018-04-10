require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start



RSpec.configure do |config|
  # config.before(:each) do
  #   require_relative './setup_test_database'
  # end

  ENV['ENVIRONMENT'] = 'test'
  require './lib/app.rb'
  require 'capybara'
  require 'capybara/rspec'
  Capybara.app = BookmarkApp

end
