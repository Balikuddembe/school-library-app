module SaveModule
  def save_data
    books_data = @books.map(&:to_hash)
    File.open('data/books.json', 'w') { |file| file.write JSON.generate(books_data) }

    persons_data = @persons.map(&:to_hash)
    File.open('data/persons.json', 'w') { |file| file.write JSON.generate(persons_data) }

    rentals_data = @rentals.map(&:to_hash)
    File.open('data/rentals.json', 'w') { |file| file.write JSON.generate(rentals_data) }
  end
end
