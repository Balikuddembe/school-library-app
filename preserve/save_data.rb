module SaveModule
  def save_data
    books_data = @books.map(&:to_hash)
    File.write('data/books.json', JSON.pretty_generate(books_data))

    persons_data = @persons.map(&:to_hash)
    File.write('data/persons.json', JSON.pretty_generate(persons_data))

    rentals_data = @rentals.map(&:to_hash)
    File.write('data/rentals.json', JSON.pretty_generate(rentals_data))
  end
end
