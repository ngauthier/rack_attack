class Blurg::Model::Post
  attr_accessor :title

  def initialize(attributes = {})
    self.title = attributes[:title]
  end
end
