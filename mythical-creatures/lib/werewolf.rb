class Werewolf
  attr_accessor :name, :location, :human, :werewolf

  def initialize(name, location = 'Neverland')
    @name = name
    @location = location
    @human = true
    @werewolf = false
  end

  def human?
    @human
  end

  def werewolf?
    @werewolf
  end

  def change!
    if @human == true && @werewolf == false
      @human = false
      @werewolf = true
    else
      @werewolf = false
      @human = true
    end
  end
end
