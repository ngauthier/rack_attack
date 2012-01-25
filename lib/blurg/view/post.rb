class Blurg::View::Post < Blurg::View::Base
  attr_accessor :post

  def initialize(post)
    self.post = post
  end

  def title; post.title end
  def body;  post.body  end
end
