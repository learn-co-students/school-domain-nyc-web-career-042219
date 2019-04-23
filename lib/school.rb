class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster.detect do |grade_level, student|
      if grade_level == grade
        return student
      end
    end
  end

  def sort
    hash = {}
    roster.each do |a, b|
      hash[a] = b.sort
      end
   hash
  end

end
