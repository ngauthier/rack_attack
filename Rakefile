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
    system(%{
      while inotifywait -qr -e close_write *; do \
        clear && time rake test --trace; \
      done
    })
  end
end

task :environment do
  require 'rubygems'
  require 'bundler/setup'
  Bundler.require :default
end

namespace :db do
  desc 'reset the database'
  task :reset => :environment do
    Blurg::Database.reset
  end
end
