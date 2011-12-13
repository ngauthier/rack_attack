$:.push File.expand_path('../app', __FILE__)
require 'rubygems'
require 'bundler/setup'
require 'rack_attack'
run RackAttack::Application
