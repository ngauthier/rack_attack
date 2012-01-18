require 'rubygems'

require 'bundler/setup'
Bundler.require :default

$:.push File.expand_path('../lib', __FILE__)
require 'blurg'

run Blurg.new
