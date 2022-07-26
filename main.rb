require 'json'
require_relative 'app'
require_relative 'display'
require_relative 'create'

class Main
  def initialize
    @app = App.new
    @display = Display.new
    @create = Create.new
  end

  def display_list
    puts "
    Please choose an option by entering a number:
    1- List all books.
    2- List all people.
    3- Create a person (teacher || student).
    4- Create a book.
    5- Create a rental.
    6- List all rentals for a given person id.
    7- Exit"
  end

  def execute_option(option)
    case option
    when 1
      @display.list_of_books(@app.books)
    when 2
      @display.list_of_people(@app.people)
    when 3
      @create.create_person(@app.people)
    when 4
      @create.create_book(@app.books)
    when 5
      @create.create_rental(@app.books, @app.people, @app.rentals)
    when 6
      @display.display_rentals_by_person_id(@app.books, @app.people, @app.rentals)
    else
      puts 'Not a valid option'
    end
  end

  def choose_option
    loop do
      display_list
      option = gets.chomp.to_i
      break if option == 7

      execute_option(option)
    end
    @app.save_books
  end

  def main
    puts 'Welcome to School library App!'
    choose_option
    puts 'Thank you for using this App!'
  end
end

main = Main.new
main.main
