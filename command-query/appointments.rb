class Appointments
  attr_accessor :when

  def initialize
    @when = []
  end

  def at(date)
    @when << date
  end

  def earliest
    @when.min
  end
end

