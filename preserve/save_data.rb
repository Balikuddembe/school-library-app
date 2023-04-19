module SaveModule
  def save_data
    books_data = @books.map(&:to_hash)
    File.write('data/books.json', JSON.generate(books_data))

    persons_data = @persons.map(&:to_hash)
    File.write('data/persons.json', JSON.generate(persons_data))

    rentals_data = @rentals.map(&:to_hash)
    File.write('data/rentals.json', JSON.generate(rentals_data))
  end
end
