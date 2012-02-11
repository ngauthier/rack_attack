!SLIDE 
# Rails Controller
* Multiple actions
* Should be a namespace
* Behavior should be shared between *kinds* of actions (destroys are all similar)

!SLIDE
# Action
## Highest level object to handle request

!SLIDE
# Action
## Rack object

!SLIDE
# Action
## Namespaced by domain

!SLIDE
# Action
## Class per action type

!SLIDE
# Action
    @@@ ruby
    class Blurg::Page::Posts
      class Show < FindAction
        def self.call(env)
          super
          post_view = Blurg::View::Posts.new(post)
          [200, {}, post_view.to_html]
        end
      end
    end

!SLIDE
# Action
    @@@ ruby
    class Blurg::Page::Posts
      class Destroy < FindAction
        def self.call(env)
          super
          post.destroy
          [200, {}, "ok"]
        end
      end
    end

!SLIDE
# Action
    @@@ ruby
    class Blurg::Page::Posts
      class FindAction
        attr_accessor :post
        def self.call(env)
          request = Rack::Request.new(env)
          self.post = Post.find(request.params['id'])
        end
      end
    end

!SLIDE
# Share behavior
## Modules and/or Inheritance
### Your own objects
