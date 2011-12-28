Blurg::Application = Rack::URLMap.new(
  "/posts" => Blurg::Controller::Posts,
  "/" => Blurg::Controller::Posts::Index
)
