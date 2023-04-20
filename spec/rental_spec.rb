require_relative '../rental'
require_relative '../student'
require_relative '../book'
require_relative '../person'
describe Rental do
  context 'when testing the Rental class' do
    book_title = 'Harry Potter'
    boook_author = 'Jose'
    book = Book.new(book_title, boook_author)
    person = Person.new(25, 'balix', parent_permission: true)
    date = '20/04/2023'
    rental = Rental.new(date, book, person)

    it 'validate book' do
      expect(rental.book).to eq book
    end

    it 'validate date' do
      expect(rental.date).to eq date
    end
    it 'validate student' do
      expect(rental.person).to eq person
    end
  end
end
