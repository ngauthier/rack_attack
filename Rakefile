require 'rubygems'
require 'bundler/setup'

task :default => :test

task :test do
  Dir[File.expand_path('../spec/**/*', __FILE__)].
    select {|f| f =~ /_test\.rb$/ || f =~ /_spec\.rb$/ }.
    each   {|f| require f         }
end

namespace :test do
  desc 'DO IT LIVE (install inotify-tools)'
  task :live do
    system(%{
      while inotifywait -qr -e close_write *; do \
        clear && rake test; \
      done
    })
  end
end
