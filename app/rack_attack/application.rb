RackAttack::Application = Rack::Builder.new do
  use Rack::CommonLogger, RackAttack.logger
  map "/" do
    run Rack::File.new('public/index.html')
  end
end
