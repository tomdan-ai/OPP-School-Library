require_relative 'classroom'
require_relative 'person'
require_relative 'students'
require_relative 'teachers'  # Updated: Added 'teacher' file
require_relative 'books'
require_relative 'rental'

class App
  attr_accessor :classrooms, :people, :books, :rentals

  def initialize
    @classrooms = []
    @people = []
    @books = []
    @rentals = []
  end

  def list_books
    puts "\n========== List of Books =========="
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
      puts '------------------------------'
    end
  end

  def list_people
    puts "\n========== List of People =========="
    @people.each do |person|
      puts "ID: #{person.id}, Name: #{person.name}"
      puts '------------------------------'
    end
  end

  def create_teacher
    puts 'Creating a teacher:'
    print 'Enter ID: '
    id = gets.chomp.to_i
    print 'Enter Age: '
    age = gets.chomp.to_i
    print 'Enter Name: '
    name = gets.chomp
    print 'Enter Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(id, age, specialization, name: name)
    @people << teacher
    puts 'Teacher created successfully.'
  end

  def create_student
    puts 'Creating a student:'
    print 'Enter ID: '
    id = gets.chomp.to_i
    print 'Enter Age: '
    age = gets.chomp.to_i
    print 'Enter Name: '
    name = gets.chomp
    print 'Enter Classroom: '
    classroom_label = gets.chomp
    classroom = @classrooms.find { |c| c.label == classroom_label }

    print 'Does the student have parent authorization? (Y/N): '
    parent_auth = gets.chomp.upcase == 'Y'

    student = Student.new(id, age, classroom, parent_permission: parent_auth, name: name)
    @people << student
    puts 'Student created successfully.'
  end

  def create_book
    puts 'Creating a book:'
    print 'Enter Title: '
    title = gets.chomp
    print 'Enter Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully.'
  end

  def create_rental
    puts 'Creating a rental:'
    print 'Enter Date: '
    date = gets.chomp
    print 'Enter Book Title: '
    book_title = gets.chomp
    book = @books.find { |b| b.title == book_title }
    print 'Enter Person ID: '
    person_id = gets.chomp.to_i
    person = @people.find { |p| p.id == person_id }

    rental = Rental.new(date, book, person)
    @rentals << rental
    puts 'Rental created successfully.'
  end

  def list_rentals_for_person
    puts 'Listing rentals for a person:'
    print 'Enter Person ID: '
    person_id = gets.chomp.to_i
    person = @people.find { |p| p.id == person_id }

    puts "Rentals for Person ID #{person_id}:"
    rentals = @rentals.select { |r| r.person == person }
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book Title: #{rental.book.title}"
    end
  end
end
