class Blurg::View::Posts < Blurg::View
  attr_accessor :posts
  template_file 'posts'

  def initialize(posts)
    self.posts = posts.map{|p| Blurg::View::Post.new(p)}
  end

  def render
    super :posts => posts
  end
end
