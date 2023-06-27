require_relative 'person'

class Decorator < Person
  def initialize(person)
    super(person.id, person.age, parent_permission: person.parent_permission, name: person.name)
    @person = person
  end

  def correct_name
    @person.correct_name
  end
end
