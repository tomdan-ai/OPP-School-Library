require_relative 'person'
require_relative 'students'
require_relative 'teachers'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

person = Person.new(1, 20)
puts person.can_use_services? # true

student = Student.new(2, 16, 'Class A')
puts student.can_use_services? # true
puts student.play_hooky # ¯\(ツ)/¯

teacher = Teacher.new(3, 35, 'Math')
puts teacher.can_use_services? # true

person = Person.new(1, 25, name: 'maximilianus')
puts person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
