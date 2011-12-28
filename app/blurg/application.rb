Blurg::Application = Rack::URLMap.new(
  "/posts" => Blurg::Controllers::Posts,
  "/" => Blurg::Controllers::Posts::Index
)
