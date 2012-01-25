class Blurg::Page::Posts
  class Index < Blurg::Page
    def self.call(env)
      request = Rack::Request.new(env)
      alert = nil
      if request.post?
        alert = 'Post posted'
        Blurg::Collection::Posts.create(request.params)
      end
      posts = Blurg::Collection::Posts.all
      posts_view = Blurg::View::Posts.new(posts)
      form_view = Blurg::View::NewPost.new
      layout = Blurg::View::Layout.new(posts_view, form_view)
      [200, {'Content-Type' => 'text/html'}, layout]
    end
  end
end
