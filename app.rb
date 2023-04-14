require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
  def initialize(option)
    @option = option
    @books = []
    @persons = []
    @rentals = []
  end

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

  # Create a person (teacher or student, not a plain Person).
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person = gets.chomp
    case person
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Write 1 or 2'
    end
    @option.show_options
  end

  # Create a student
  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent persmission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'
    @persons.push(Student.new(age, name, parent_permission))
    puts 'Person created successfuly'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(age, name, specialization))
    puts 'Person created successfully'
  end

  # Create a book.
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book created successfully'
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

  def exit
    puts 'Thank you for using the app!'
  end
end
