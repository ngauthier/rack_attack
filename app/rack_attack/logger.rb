require 'logger'
class RackAttack::Logger
  def initialize(stream)
    @logger = Logger.new stream
  end

  def write(*args)
    @logger << args
  end
end
