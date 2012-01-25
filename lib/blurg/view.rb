class Blurg::View
  autoload :Posts,   'blurg/view/posts'
  autoload :Post,    'blurg/view/post'
  autoload :NewPost, 'blurg/view/new_post'
  autoload :Layout,  'blurg/view/layout'

  class Base < Mustache
    self.template_path = File.expand_path('../template', __FILE__)
    self.view_namespace = 'Blurg::View'
    self.raise_on_context_miss = true

    def each
      yield to_html
    end
  end
end
