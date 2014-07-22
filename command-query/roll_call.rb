class RollCall
  attr_accessor :names, :longest_name

  def initialize
    @names = []
    @longest_name = nil
  end

  def <<(name)
    @names << name
  end

  def longest_name
    @longest_name = @names.reduce { |l, n| n.length > l.length ? l = n : l = l }
  end
end
