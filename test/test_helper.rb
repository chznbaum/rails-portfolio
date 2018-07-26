require 'simplecov'
SimpleCov.start 'rails' if ENV["COVERAGE"] do
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/test/'
end
SimpleCov.command_name 'Minitest'

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end