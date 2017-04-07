ENV['RACK_ENV'] = 'test'

require 'simplecov'
SimpleCov.start

require File.expand_path '../../boot.rb', __FILE__

module RSpecMixin
  def app() MyApp end
end

Airborne.configure do |config|
  config.rack_app = MyApp
end

RSpec.configure do |config|
  config.include RSpecMixin
  config.order = :random
end
