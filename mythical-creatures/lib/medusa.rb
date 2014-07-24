class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    @statues += ([] << victim)
  end
end
