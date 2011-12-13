module RackAttack
  autoload :Application, "rack_attack/application"
  autoload :Home,        "rack_attack/home"
  autoload :Logger,      "rack_attack/logger"

  def self.logger
    @logger ||= RackAttack::Logger.new(STDOUT)
  end

  def self.logger=(stream)
    @logger = RackAttack::Logger.new(stream)
  end
end
