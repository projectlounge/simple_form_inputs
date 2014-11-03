require 'slim'
require 'simple_form'
require 'pry'
require 'pry-nav'
require "therubyracer"
require "less-rails"
require 'twitter-bootstrap-rails'
require 'jquery-rails'

module SimpleFormInputs
  class Engine < ::Rails::Engine
    isolate_namespace SimpleFormInputs
  end
end
