RackAttack::Application = Rack::Builder.new do
  map "/" do
    run RackAttack::Home.new
  end
end
