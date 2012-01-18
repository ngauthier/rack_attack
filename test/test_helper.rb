require 'rubygems'
require 'bundler/setup'
Bundler.require :default, :test

require 'capybara/dsl'
require 'tempfile'

ENV['DATABASE_URL'] = "sqlite://#{Tempfile.new('blurg').path}"
Capybara.app = Blurg.new

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
