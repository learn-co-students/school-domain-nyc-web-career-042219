# code here!
class School

  def initialize (name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student (name, grade)
    if !@roster[grade]
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end

  end

  def grade (grade_desired)
    @roster[grade_desired]
  end

  def sort
    new_hash = {}
    @roster.sort.each do|grade_student_pair|
      new_hash[grade_student_pair[0]] = grade_student_pair[1].sort

    end
    new_hash
  end


end
