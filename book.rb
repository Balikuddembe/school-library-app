class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rentals(book)
    @rentals.push(book)
  end

  def to_hash
    {
      title: @title,
      author: @author
    }
  end
end
