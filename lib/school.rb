# code here!
require 'pry'

class School
  attr_accessor :school_name, :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  # def roster
  #   @roster = {}
  # end
  
  def add_student(student_name, grade_lvl)
    if roster[grade_lvl] == nil
      roster[grade_lvl] = []
    end
    roster[grade_lvl] << student_name
  end
  
  def grade(grade_lvl)
    roster[grade_lvl]
  end
  
  def sort
    roster.map do |grade, student_arr|
      student_arr.sort!
    end
    roster
    #binding.pry
  end
end