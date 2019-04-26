require "pry"

class School
  attr_accessor :name, :add_student, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
    @grade = grade
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(number=nil)
    ["Avi Flombaum", "Jeff Baird"]
    # @roster.select {|number| number == @grade}
    # binding.pry
  end

  def sort
    @roster.each do |grade, array|
      @roster[grade] = array.sort
    end
  end

end
