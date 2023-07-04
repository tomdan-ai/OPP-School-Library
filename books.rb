class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    rental = Rental.new(date, self, person)
    @rentals << rental
    person.add_rental(rental)
  end

  def to_h
    {
      'type' => 'Book',
      'title' => @title,
      'author' => @author
    }
  end
end
