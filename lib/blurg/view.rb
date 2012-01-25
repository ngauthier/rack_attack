class Blurg::View
  autoload :Posts,   'blurg/view/posts'
  autoload :Post,    'blurg/view/post'
  autoload :NewPost, 'blurg/view/new_post'
  autoload :Layout,  'blurg/view/layout'

  class Base
    def to_html
      Mustache.render(self.class.template, self)
    end

    def each
      yield to_html
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
end
