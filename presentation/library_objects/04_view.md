!SLIDE 
# View
* Ruby Object
* Translates models for presentation
* (think presenter)

!SLIDE 
# Template
* Native language (html)
* Dumb
* Seriously, really dumb
* (think rails view)

!SLIDE
# View
    @@@ ruby
    class Blurg::View
      def render()
        Mustache.render(
          self.class.template, self)
      end
      class << self
        attr_accessor :template
        def template_file(name)
          self.template = File.read(File.expand_path(
            "../template/#{name}.mustache", __FILE__
          ))
        end
      end
    end

!SLIDE
# Post View
    @@@ ruby
    class Blurg::View::Post < Blurg::View
      attr_accessor :post
      template_file 'post'
      extend Forwardable
      def_delegators :post, :title, :body

      def initialize(post)
        self.post = post
      end

      def date
        post.created_at.strftime("%m/%d/%y %I:%M %P")
      end
    end

!SLIDE
# Post Template
    @@@ html
    <h1>{{title}}</h1>
    <p class='small'>{{date}}</p>
    <div class='body'>
      {{body}}
    </div>

!SLIDE
# View Composition
    @@@ ruby
    class Blurg::View::Layout < Blurg::View
      attr_accessor :view
      template_file 'layout'

      extend Forwardable
      def_delegator :view, :render, :content
      
      def initialize(view)
        self.view = view
      end
    end

!SLIDE
# View Composition
    @@@ html
    <h1>Welcome to Blurg</h1>
    {{content}}

!SLIDE
# View Composition
## Just keep nesting

!SLIDE bullets
# View
* Dear [@j3](http://twitter.com/j3),
* on 3/8/11 I told you I'd take a stab at "presenters".
* Turns out they're real views.
