$:.push File.expand_path('..', __FILE__)
module Blurg
  autoload :Application, "blurg/application"
  autoload :Home,        "blurg/home"
  autoload :Logger,      "blurg/logger"
  autoload :Post,        "blurg/post"
  autoload :Database,    "blurg/database"

  def self.logger
    @logger ||= Blurg::Logger.new(STDOUT)
  end

  def self.logger=(stream)
    @logger = Blurg::Logger.new(stream)
  end
end
