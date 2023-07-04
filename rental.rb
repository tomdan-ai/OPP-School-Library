class Rental
  attr_reader :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def to_h
    {
      'type' => 'Rental',
      'date' => @date,
      'book_title' => @book.title,
      'person_id' => @person.id
    }
  end
end
