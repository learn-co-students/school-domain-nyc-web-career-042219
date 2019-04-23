class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student_name, student_grade)
    if @roster[student_grade].nil?
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort! { |x, y| x <=> y }
    end
  end

end
