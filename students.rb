require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission: parent_permission, name: name)
    @classroom = classroom
    classroom&.add_student(self) # Add the student to the classroom if it is provided
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
