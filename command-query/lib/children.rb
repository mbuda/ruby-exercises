class Children
  attr_accessor :children

  def initialize
    @children = []
  end

  def <<(child)
    @children << child
  end

  def eldest
    @children.reduce { |e, c| e.age > c.age ? e = e : e = c }
  end
end
