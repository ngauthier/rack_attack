class Blurg::View::Post < Blurg::View
  attr_accessor :post
  delegate :title, :to => :post

  def initialize(post)
    self.post = post
  end
end
