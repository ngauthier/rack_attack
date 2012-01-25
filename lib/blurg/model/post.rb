class Blurg::Model::Post
  attr_accessor :title
  attr_accessor :body

  def initialize(attributes = {})
    self.title = attributes[:title]
    self.body = attributes[:body]
  end
end
