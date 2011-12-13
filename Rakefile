require 'rubygems'
require 'bundler/setup'

task :default => :test

task :test do
  Dir[File.expand_path('../test/**/*', __FILE__)].
    select {|f| f =~ /_test\.rb$/ || f =~ /_spec\.rb$/ }.
    each   {|f| require f         }
end
