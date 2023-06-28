class Student < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission: parent_permission, name: name)
    self.classroom = classroom
  end

  def play_hooky
    "¯\\_(ツ)_/¯"
  end
end
