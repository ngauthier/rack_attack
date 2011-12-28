class Blurg::View
  autoload :Posts,  'blurg/view/posts'
  autoload :Post,   'blurg/view/post'
  autoload :Layout, 'blurg/view/layout'

  def render(attributes = {})
    Mustache.render(self.class.template, attributes)
  end

  class << self
    attr_accessor :template
    def template_file(name)
      self.template = File.read(File.expand_path(
        "../template/#{name}.mustache", __FILE__
      ))
    end

    def delegate(*args)
      destination = args.pop[:to]
      args.each do |method|
        define_method method do
          send(destination).send(method)
        end
      end
    end
  end
end
