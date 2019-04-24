require 'pry'
class School
  attr_accessor :roster

  def initialize(roster)
    @roster = roster
    @roster = {}
  end

    def add_student(name, num)

      if !@roster[num]
        @roster[num] = []
      end
      @roster[num].push(name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade,names| names.sort! }
    end
  end
