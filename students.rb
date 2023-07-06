require_relative 'person'
class Student < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission: parent_permission, name: name)
    self.classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end

  def to_h
    {
      'type' => 'Student',
      'id' => @id,
      'age' => @age,
      'parent_permission' => @parent_permission,
      'name' => @name
    }
  end
end
