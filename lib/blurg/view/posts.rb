class Blurg::View::Posts < Blurg::View::Base
  attr_accessor :posts

  def initialize(posts)
    self.posts = posts.map do |p|
      Blurg::View::Post.new(p).render
    end.join
  end
end
