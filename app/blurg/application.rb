Blurg::Application = Rack::Builder.new do
  use Rack::CommonLogger, Blurg.logger
  map "/" do
    run Rack::File.new('public/index.html')
  end
end
