$:.push File.expand_path('../app', __FILE__)
require 'rack_attack'
run RackAttack::Application
