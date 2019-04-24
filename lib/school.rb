require 'pry'

class School
  attr_accessor :name, :roster
   def initialize (name)
     @name = name
     @roster = {}
   end
   
  # def add_student(name, grade)
  #   @name = name 
  #   @grade = grade
  #   if @roster.include?(grade) == false
  #     @roster[grade] = []
  #   end
  #   @roster[grade] << name
  #   # roster[grade] = []
  #   # roster[grade] << name
  # end
  
  def add_student(name, grade)
  if @roster[grade]
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
end
  
  def grade(grade)
    roster[grade]
  end
 

  def sort(grade, student)
  # school.sort gives an alphzd. array of student names within a hash, where the student names are the values and grade is the key
  # => { key (grade) => ["value", "value"]}
  # can't just shovel into a hash so easily
  
    sorted = {}
 
    roster.each do |grade, student|
      sorted.store[:grade, :student]
      
    
  end
  end
  
end