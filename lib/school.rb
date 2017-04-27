class School

  attr_accessor :student, :grade, :school, :roster

  def add_student(student, grade)
    @student = student
    @grade = grade
    if !@roster[@grade]
      @roster[@grade] = []
      @roster[@grade] << @student
    else
      @roster[@grade] << @student
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

  def initialize(school)
    @school = school
    @roster = {}
  end


end
