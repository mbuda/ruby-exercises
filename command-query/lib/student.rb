class Student
  attr_accessor :grade

  def initialize
    @grade = 'C'
  end

  def study
    @grade.tr!('BCDEF', 'ABCDE')
  end

  def slack_off
    @grade.tr!('ABCDE', 'BCDEF')
  end
end

