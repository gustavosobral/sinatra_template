ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

require 'sinatra/base'
require 'sinatra/namespace'
require 'sinatra/json'

require 'active_support/concern'
require 'active_support/core_ext/time'
require 'active_support/core_ext/string'

Dotenv.load

Dir['app/{**, **/**}/*.rb'].sort.each {|file| require File.expand_path(file) }
Dir['config/initializers/{**, **/**}/*.rb'].sort.each {|file| require File.expand_path(file) }

require './app'
