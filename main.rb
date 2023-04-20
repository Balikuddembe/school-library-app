require './app'

class Options
  def initialize
    @app = App.new(self)
    puts 'Welcome to School Library App!'
    show_options
  end

  def show_options
    puts "\nPlease choose an option by entering the number:
    1 - List all books
    2 - List all people
    3 - Create a person
    4 - Create a book
    5 - Create a rental
    6 - List all rentals for a given person id
    7 - Exit"
    option = gets.chomp
    select_option(option)
  end

  def select_option(option)
    list = {
      '1' => :list_books,
      '2' => :list_people,
      '3' => :create_person,
      '4' => :create_book,
      '5' => :create_rental,
      '6' => :list_rentals,
      '7' => :exit
    }
    chosen = list[option]
    if chosen.nil?
      puts 'Select a number from the list'
      show_options
    else
      @app.send(chosen)
    end
  end
end

def main
  Options.new
end

main
