class Centaur
  attr_accessor :name, :breed, :cranky, :lay, :tired

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @lay = false
    @tired = 0
  end

  def shoot
    if @lay == false && @cranky == false
      tiring
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if @lay == false && @cranky == false
      tiring
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def tiring
    @tired += 1
    if @tired >= 3
      @lay = true
      @cranky = true
    end
  end

  def standing?
    !@lay
  end

  def laying?
    @lay
  end

  def cranky?
    @cranky
  end

  def lay_down
    @lay = true
  end

  def stand_up
    @lay = false
  end

  def sleep
    if standing?
      "NO!"
    else
      @cranky = false
      @tired = 0
    end
  end
end
