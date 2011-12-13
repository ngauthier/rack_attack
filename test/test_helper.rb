$:.push File.expand_path('../../app', __FILE__)
require 'rubygems'
require 'bundler/setup'
Bundler.require :default, :test
require 'minitest/unit'
require 'minitest/autorun'
require 'rack_attack'
require 'capybara/dsl'

Capybara.app = RackAttack::Application

class RackAttack::TestCase < MiniTest::Unit::TestCase
end

class RackAttack::IntegrationTest < RackAttack::TestCase
  include Capybara::DSL

  def assert_see(content, msg = nil)
    assert page.has_content?(content), msg || "Expected to see #{content}"
  end
end

class RackAttack::JavascriptTest < RackAttack::IntegrationTest
  def setup
    Capybara.current_driver = :webkit
  end
end
