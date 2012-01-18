class Blurg::Page::Posts
  class Index
    def self.call(env)
      posts = Blurg::Collection::Posts.all
      view = Blurg::View::Posts.new(posts)
      layout = Blurg::View::Layout.new(view)
      [200, {'Content-Type' => 'text/html'}, [layout.to_html]]
    end
  end
end
