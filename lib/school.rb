# code here!
class School

attr_accessor :name, :roster
# attr_reader :name why is this not added when name is part of #initialize?

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    roster[student_grade] = [] if roster[student_grade].nil?
    roster[student_grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    roster.each do |grades, students| #why do we put grades it asks for students, which is the only string?
    students.sort! #why is this not .sort ?
    end
  end

end
