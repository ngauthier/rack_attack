class Blurg::View::Layout < Blurg::View
  attr_accessor :view
  def initialize(view)
    self.view = view
  end

  def render
    Mustache.render(self.class.template, :content => view.render)
  end

  private
  def self.template
    @_template ||= File.read(File.expand_path("../../template/layout.mustache", __FILE__))
  end
end
