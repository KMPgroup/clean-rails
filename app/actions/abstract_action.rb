class AbstractAction
  def initialize(responder)
    @responder = responder
  end

  protected
  attr_accessor :responder
end