class Blurg::View::Layout < Blurg::View
  attr_accessor :view
  template_file 'layout'

  def initialize(view)
    self.view = view
  end

  def content
    view.render
  end
end
