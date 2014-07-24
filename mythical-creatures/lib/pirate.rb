class Pirate
  attr_accessor :name, :job, :curse, :bad_dids

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @curse = false
    @bad_dids = 0
  end

  def cursed?
    @curse
  end

  def commit_heinous_act
    @bad_dids += 1
    @curse = true if @bad_dids >= 3
  end
end
