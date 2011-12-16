$:.push File.expand_path('../../app', __FILE__)
require 'rubygems'
require 'bundler/setup'
Bundler.require :default, :test
require 'minitest/spec'
require 'minitest/autorun'
require 'blurg'
require 'capybara/dsl'
require 'logger'

Blurg.logger = 'log/test.log'
Capybara.app = Blurg::Application

class Blurg::Spec < MiniTest::Spec
end

class Blurg::IntegrationSpec < Blurg::Spec
  include Capybara::DSL

  def assert_see(content, msg = nil)
    assert page.has_content?(content), msg || "Expected to see #{content}"
  end
end

class Blurg::JavascriptSpec < Blurg::IntegrationSpec
  def setup
    Capybara.current_driver = :webkit
  end
end
