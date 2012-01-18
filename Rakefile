require 'rubygems'
require 'bundler/setup'

task :default => :test

task :application do
  $:.push File.expand_path('../lib', __FILE__)
  require 'blurg'
end

task :test => :application do
  $:.push File.expand_path('../test', __FILE__)
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
    p ENV['DATABASE_URL']
    Blurg::Database.reset
  end
end
