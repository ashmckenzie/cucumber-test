require 'simplecov'
SimpleCov.start

require 'capybara/cucumber'
require_relative '../../lib/app'

Capybara.app = App