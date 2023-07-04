class Person
  attr_reader :id, :age, :parent_permission, :name

  def initialize(id, age, parent_permission: true, name: 'Unknown')
    @id = id
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def to_h
    {
      'type' => self.class.to_s,
      'id' => @id,
      'age' => @age,
      'parent_permission' => @parent_permission,
      'name' => @name
    }
  end
end
