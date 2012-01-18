require 'rubygems'

require 'bundler/setup'
Bundler.require :default

$:.push File.expand_path('../lib', __FILE__)
require File.expand_path('../lib/blurg', __FILE__)

run Blurg.new
