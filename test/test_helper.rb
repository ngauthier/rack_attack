$:.push File.expand_path('../../app', __FILE__)
require 'rubygems'
require 'bundler/setup'
Bundler.require :default, :test
require 'minitest/spec'
require 'minitest/autorun'
require 'rack_attack'
require 'capybara/dsl'

Capybara.app = RackAttack::Application

class RackAttack::Spec < MiniTest::Spec
end

class RackAttack::IntegrationSpec < RackAttack::Spec
  include Capybara::DSL

  def assert_see(content, msg = nil)
    assert page.has_content?(content), msg || "Expected to see #{content}"
  end
end

class RackAttack::JavascriptSpec < RackAttack::IntegrationSpec
  def setup
    Capybara.current_driver = :webkit
  end
end
