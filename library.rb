require_relative 'person'
require_relative 'students'
require_relative 'teachers'

person = Person.new(1, 20)
puts person.can_use_services? # true

student = Student.new(2, 16, 'Class A')
puts student.can_use_services? # true
puts student.play_hooky # ¯\(ツ)/¯

teacher = Teacher.new(3, 35, 'Math')
puts teacher.can_use_services? # true
