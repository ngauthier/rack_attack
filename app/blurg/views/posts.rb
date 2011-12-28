class Blurg::Views::Posts
  def initialize(posts)
    @posts = posts
  end

  def render
    @posts.map(&:title).join('<br/>')
  end
end
