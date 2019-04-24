# code here!
require 'pry'

class School

  def initialize(name)
    @name=name
    @roster={}

  end

  def roster
    @roster
  end
  def add_student(student,grade)

    flag=@roster.keys.include?(grade)

    if flag
        @roster[grade] << student
    else
        @roster[grade]=[]
        @roster[grade] << student
      end

    #    binding.pry
  #
  end
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, array|
      @roster[grade] = array.sort!
    end
    @roster
  end 
end
