# code here!
require 'pry'
class School

  attr_accessor :school_name, :roster

  def initialize(school_name) #only one parameter, automatically starts with a blank roster
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    #roster[grade] = [student_name] << student_name --> this adds a copy of the first student name to an arr with that name in it

    # student_name = "#{student_name}!" --> this is messy and weird to add junk to separate by junk, it does however keep the full name together when split to arr
    # roster[grade] = student_name.split("!")

     # array = [] --> this is close but keeps rewriting the last student name because we keep pointing the arr to an empty one each time
     # roster[grade] = array
     # array << student_name

     roster[grade] = [] if roster[grade].nil?
     roster[grade] << student_name
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end

end
