class Blurg::Controllers::Posts
  class Index
    def self.call(env)
      [200, {}, Blurg::Views::Layout.new(
        Blurg::Views::Posts.new(Blurg::Collections::Posts.all)
      ).render]
    end
  end
end
