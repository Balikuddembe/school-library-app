require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './person_module'
require_relative './book_module'
require_relative './rental_module'
require_relative './preserve/save_data'
require 'json'

class App
  def initialize(option)
    @option = option
    @books = load_books
    @persons = load_persons
    @rentals = []
  end

  include PersonModule
  include BookModule
  include RentalModule
  include SaveModule

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

  def exit
    puts 'Thank you for using the app!'
    save_data
  end

  private

  def load_books
    JSON.parse(File.read('data/books.json')).map do |book|
      Book.new(book["title"], book["author"])
    end
  end

  def load_persons
    JSON.parse(File.read("data/persons.json")).map do |person|
      if person["json_class"] == "Student"
        Student.new(person["age"], person["name"], person["parent_permission"])
      elsif person["json_class"] == "Teacher"
        Teacher.new(person["age"], person["name"], person["parent_permission"])
      end
    end
  end
end
