class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, book, person)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def to_hash
    {
      date: @date,
      person: @person.to_hash,
      book: @book.to_hash
    }
  end

end
