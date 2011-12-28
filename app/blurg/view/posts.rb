class Blurg::View::Posts < Blurg::View
  def initialize(posts)
    @posts = posts
  end

  def render
    @posts.map(&:title).join('<br/>')
  end
end
