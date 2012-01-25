class Blurg::View::Layout < Blurg::View::Base
  attr_accessor :views
  template_file 'layout'

  def initialize(*views)
    self.views = views
  end

  def content
    views.map(&:to_html).join
  end

end
