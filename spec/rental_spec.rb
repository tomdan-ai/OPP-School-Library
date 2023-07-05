require 'rspec'
require './rental'
require './books'
require './person'

RSpec.describe Rental do
  let(:date) { '2023-07-05' }
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { Person.new(57, 'Leonard Peabody') }
  subject { described_class.new(date, book, person) }

  describe '#initialize' do
    it 'creates a new rental with the specified date, book, and person' do
      expect(subject.date).to eq(date)
      expect(subject.book).to eq(book)
      expect(subject.person).to eq(person)
    end
  end
end
