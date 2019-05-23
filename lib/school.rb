require "pry"

class School

attr_accessor :school_name, :grade, :roster

  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster_sorted = {}
    roster.each do |grade, students|
      roster_sorted[grade] = students.sort
    end
    roster_sorted
  end

end
