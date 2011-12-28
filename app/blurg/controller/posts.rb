class Blurg::Controller::Posts
  class Index
    def self.call(env)
      [200, {}, Blurg::View::Layout.new(
        Blurg::View::Posts.new(Blurg::Collection::Posts.all)
      ).render]
    end
  end
end
