class School
  attr_accessor :name, :roster
   def initialize (name)
     @name = name
     @roster = {}
   end
   
  def add_student(name, grade)
    @name = name 
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
    # roster[grade] = []
    # roster[grade] << name
  end
  
  def grade(number)
    @roster = number
  end
    
  
  
end