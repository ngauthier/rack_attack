!SLIDE
# Hello World

!SLIDE
# Rackup
    @@@ ruby
    $:.push File.expand_path('../app', __FILE__)
    require 'rubygems'
    require 'bundler/setup'
    require 'rack_attack'
    run RackAttack::Application

!SLIDE
# Application
    @@@ ruby
    module RackAttack
      autoload :Application, "rack_attack/application"
      autoload :Home,        "rack_attack/home"
      autoload :Logger,      "rack_attack/logger"
    
      def self.logger
        @logger ||= RackAttack::Logger.new(STDOUT)
      end
    
      def self.logger=(stream)
        @logger = RackAttack::Logger.new(stream)
      end
    end

!SLIDE
# Router
    @@@ ruby
    RackAttack::Application = Rack::Builder.new do
      use Rack::CommonLogger, RackAttack.logger
      # in the future, my controllers will go here
      map "/" do
        run Rack::File.new('public/index.html')
      end
    end

!SLIDE
# Tests
    @@@ ruby
    require 'test/test_helper'
    class BlogSpec < RackAttack::IntegrationSpec
      it 'should list the posts' do
        visit '/'
        assert_see 'Post 1'
        assert_see 'Post 2'
        assert_see 'Post 3'
      end
    end

!SLIDE
# Lightweight
    @@@
    $ time rake
    Run options: --seed 2301
    # Running tests: F
    Finished tests in 0.148492s, 6.7344 tests/s, 6.7344 assertions/s.
      1) Failure: [redacted]
    1 tests, 1 assertions, 1 failures, 0 errors, 0 skips
    
    real	0m0.398s
    user	0m0.332s
    sys	0m0.068s

!SLIDE
# Lightweight
## Tests: 0.148s
## Stack: 0.250s
## Total: 0.398s
