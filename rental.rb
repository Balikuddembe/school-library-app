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
      person: { id: @person.id, name: @person.name, age: @person.age, class: @person.class },
      book: { title: @book.title, author: @book.author }
    }
  end
end
