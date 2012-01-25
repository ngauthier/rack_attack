#!/usr/bin/env rake
require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = "test/**/*_test.rb"
end

namespace :test do
  desc 'Continuously run tests'
  task :live do
    exec(%{while inotifywait -qr -e close_write *; do clear; rake test; done})
  end
end

task :environment do
  require 'rubygems'
  require 'bundler/setup'
  Bundler.require :default, (ENV['RACK_ENV'] || 'development')
end

namespace :db do
  desc 'reset the database'
  task :reset => :environment do
    Blurg::Database.reset
  end
end
