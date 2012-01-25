class Blurg::View::Layout < Blurg::View::Base
  attr_accessor :content
  attr_accessor :alert

  def initialize(options = {})
    self.alert = options.fetch(:alert) { nil }
    self.content = options.fetch(:content) { "" }
  end
end
