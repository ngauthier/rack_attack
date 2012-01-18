require 'rubygems'
require 'bundler/setup'

task :default => :test

task :application do
  require File.expand_path('../app/blurg', __FILE__)
end

task :test do
  $:.push File.expand_path('../test', __FILE__)
  $:.push File.expand_path('../lib', __FILE__)
  Dir[File.expand_path('../test/**/*', __FILE__)].
    select {|f| f =~ /_test\.rb$/ }.
    each   {|f| require f         }
end

namespace :test do
  desc 'DO IT LIVE (install inotify-tools)'
  task :live do
    system(%{
      while inotifywait -qr -e close_write *; do \
        clear && time rake test --trace; \
      done
    })
  end
end

namespace :db do
  desc 'reset the database'
  task :reset => :application do
    Blurg::Database.reset
  end
end
