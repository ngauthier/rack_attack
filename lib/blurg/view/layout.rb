class Blurg::View::Layout < Blurg::View::Base
  attr_accessor :view
  template_file 'layout'

  def initialize(view)
    self.view = view
  end

  def content
    view.to_html
  end
end
