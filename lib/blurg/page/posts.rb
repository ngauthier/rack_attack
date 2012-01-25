class Blurg::Page::Posts
  class Index < Blurg::Page
    def self.call(env)
      request = Rack::Request.new(env)

      alert = nil
      if request.post?
        alert = 'Post posted'
        Blurg::Collection::Posts.create(request.params)
      end
      
      posts = Blurg::Collection::Posts.new
      posts_view = Blurg::View::Posts.new(posts)
      form_view = Blurg::View::NewPost.new
      
      layout = Blurg::View::Layout.new(
        :alert => alert,
        :content => posts_view.to_html + form_view.to_html
      )
      
      [200, {'Content-Type' => 'text/html'}, layout]
    end
  end
end
