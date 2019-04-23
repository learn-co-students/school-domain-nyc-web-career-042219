class School

	attr_accessor :name, :roster, :grade
	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if !@roster[grade]
			@roster[grade] = []
			@roster[grade] << name
		else
			@roster[grade] << name
		end
	end

	def roster
		@roster
	end

	def grade(grade)
		if @roster.keys.include?(grade)
			return @roster[grade]
		end
	end

	  def sort
      	@roster.each do |grade, students|
      	  @roster[grade] = students.sort
      	end
      	return @roster
 	 end

end