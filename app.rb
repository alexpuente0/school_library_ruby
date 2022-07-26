require_relative 'sturdent'
require_relative 'teacher'
require_relative 'book'
require_relative 'rentals'
require_relative 'classroom'

class App
  attr_accessor :books, :people, :rentals, :classroom

  def initialize
    @books = []
    @books = load_books if File.exists?("books.json")
    @people = []
    @rentals = []
  end
  def load_books
    JSON.parse(File.read("books.json"), create_additions: true)
  end
  def save_books
    File.write("books.json", JSON.generate(@books), mode: "w")
  end

end
