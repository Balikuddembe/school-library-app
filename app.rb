require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './person_module'
require_relative './book_module'

class App
  def initialize(option)
    @option = option
    @books = []
    @persons = []
    @rentals = []
  end
  
  include PersonModule
  include BookModule

  # List all books.
  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
    @option.show_options
  end

  # List all people.
  def list_people
    @persons.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    @option.show_options
  end

  # Create a rental.
  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index} Title: '#{book.title}', Author: #{book.author}"
    end
    book_number = gets.chomp.to_i
    puts 'Select a person from the following list by number'
    @persons.each_with_index do |person, index|
      puts "#{index} [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_number = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, @books[book_number], @persons[person_number]))
    puts 'Rental created successfully'

    @option.show_options
  end

  # List all rentals for a given person id.
  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals: '
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
    @option.show_options
  end
end
