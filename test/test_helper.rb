require 'rubygems'
require 'bundler/setup'
Bundler.require :default, :test
require File.expand_path('../../lib/blurg', __FILE__)
require 'minitest/unit'
require 'minitest/autorun'
require 'capybara/dsl'

Capybara.app = Rack::CommonLogger.new(Blurg.new, File.new('log/test.log', 'w'))

class Blurg::Test < MiniTest::Unit::TestCase
end

class Blurg::IntegrationTest < Blurg::Test
  include Capybara::DSL

  def setup
    Blurg::Database.reset
  end

  def assert_see(content, msg = nil)
    assert page.has_content?(content), msg || "Expected to see #{content}"
  end
end
