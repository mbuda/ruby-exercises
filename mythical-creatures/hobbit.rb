class Hobbit
  attr_accessor :name, :disposition, :age, :adult

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
  end

  def celebrate_birthday
    @age += 1
    @adult = true if @age > 32
  end

  def adult?
    @adult
  end
end
