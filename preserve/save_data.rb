require 'json'

module SaveModule
  def save_data
    File.open('data/books.json', 'w') { |file| file.write JSON.generate(@books) }

    File.open('data/persons.json', 'w') { |file| file.write JSON.generate(@persons) }

    File.open('data/rentals.json', 'w') { |file| file.write JSON.generate(@rentals) }
  end
end
