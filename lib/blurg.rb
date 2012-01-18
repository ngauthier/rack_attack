require 'blurg/delegation'
class Blurg
  autoload :Database,    "blurg/database"
  autoload :Model,       "blurg/model"
  autoload :Collection,  "blurg/collection"
  autoload :Page,        "blurg/page"
  autoload :View,        "blurg/view"

  def initialize
    @app = Rack::URLMap.new(
      "/" => Blurg::Page::Posts::Index
    )
  end

  def call(*args)
    @app.call(*args)
  end
end
