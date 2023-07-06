require 'rspec'
require_relative '../books'
require_relative '../person'
require_relative '../rental'

describe Book do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { Person.new('123', 20) }

  describe '#initialize' do
    it 'sets the title and author' do
      expect(book.title).to eq 'Title'
      expect(book.author).to eq 'Author'
    end

    it 'initializes an empty rentals array' do
      expect(book.rentals).to be_empty
    end
  end

  describe '#to_h' do
    it 'returns a hash representation of the book' do
      expected_hash = {
        'type' => 'Book',
        'title' => 'Title',
        'author' => 'Author'
      }
      expect(book.to_h).to eq expected_hash
    end
  end
end
