require_relative 'classroom'
require_relative 'person'
require_relative 'students'
require_relative 'teachers'
require_relative 'books'
require_relative 'rental'
require 'json'

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

  def save_data_to_json(file_path, data)
    File.open(file_path, 'w') do |file|
      json_data = JSON.generate(data.map(&:to_h))
      file.write(json_data)
    end
  end

  def load_data_from_json(file_path)
    return [] unless File.exist?(file_path)

    json_data = File.read(file_path)
    json_array = JSON.parse(json_data)
    json_array.map { |json| from_json(json) }
  end

  def from_json(json)
    case json['type']
    when 'Teacher'
      Teacher.new(json['id'], json['age'], json['specialization'], name: json['name'])
    when 'Student'
      Student.new(json['id'], json['age'], nil, parent_permission: json['parent_permission'], name: json['name'])
    when 'Book'
      Book.new(json['title'], json['author'])
    when 'Rental'
      book = @books.find { |b| b.title == json['book_title'] }
      person = @people.find { |p| p.id == json['person_id'] }
      Rental.new(json['date'], book, person)
    end
  end

  def load_all_data
    @people = load_data_from_json('people.json')
    @books = load_data_from_json('books.json')
    @rentals = load_data_from_json('rentals.json')
  end

  def save_all_data
    save_data_to_json('people.json', @people)
    save_data_to_json('books.json', @books)
    save_data_to_json('rentals.json', @rentals)
  end
end
