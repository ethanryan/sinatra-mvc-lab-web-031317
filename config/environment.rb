ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'capybara/dsl' #adding this here
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'
