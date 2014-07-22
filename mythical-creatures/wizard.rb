class Wizard
  attr_accessor :name, :beard

  def initialize(name, hash = {bearded: true})
    @name = name
    @beard = hash[:bearded]
  end

  def bearded?
    @beard
  end

  def incantation(text)
    "sudo " + text
  end
end

