# -*- encoding: utf-8 -*-
require File.expand_path('../lib/emberjs/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "emberjs-rails"
  s.version     = EmberJS::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tyson Tate"]
  s.email       = ["tyson@stovepipestudios.com"]
  s.homepage    = "http://rubygems.org/gems/emberjs-rails"
  s.summary     = "Use Ember.js with Rails 3"
  s.description = "This gem provides Ember.js for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "emberjs-rails"

  s.add_dependency "railties", ">= 3.2.0.beta"
  s.add_dependency "execjs"

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
