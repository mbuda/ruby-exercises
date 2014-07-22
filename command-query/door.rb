class Door
  attr_accessor :closed

  def initialize
    @closed = true
  end

  def locked?
    @closed
  end

  def unlock
    @closed = false
  end
end
