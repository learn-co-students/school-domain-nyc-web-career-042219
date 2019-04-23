require 'pry'

class School

  attr_accessor :school_name, :roster


  def initialize(school_name)
    @school_name = school_name
    @roster = { }
  end


  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
    else roster[grade] = [ ]
      roster[grade] << name

    end
  end

  def grade(grade)
    roster[grade]
    binding.pry
  end

  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort
    end
  end

end
