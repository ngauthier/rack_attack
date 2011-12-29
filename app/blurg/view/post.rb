class Blurg::View::Post < Blurg::View
  attr_accessor :post
  template_file 'post'
  delegate :title, :to => :post

  def initialize(post)
    self.post = post
  end
end
