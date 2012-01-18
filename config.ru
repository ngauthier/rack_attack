require 'rubygems'
require 'bundler/setup'
Bundler.require :default, ENV['RACK_ENV']
run Blurg.new
