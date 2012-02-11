!SLIDE
# Router - Rack::URLMap
    @@@ ruby
    # config.ru
    run Blurg.new

    # blurg.rb
    class Blurg
      def initialize(options = {})
        @app = Rack::URLMap.new(
          "/" => Page::Posts::Index
        )
      end

      def call(*args); @app.call(*args); end
    end

!SLIDE
# Router - Rack::URLMap
## Used existing component as protocol

!SLIDE 
# Router - Could have used
* http\_router (black box)
* Sinatra (white box)
