require_relative 'student'
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
    @people = load_people if File.exists?('people.json')
    @rentals = []
    @people = load_rentals if File.exists?('rentals.json')
  end

  def load_books
    JSON.parse(File.read("books.json"), create_additions: true)
  end
  def save_books
    File.write("books.json", JSON.generate(@books), mode: "w")
  end

  def load_people
    JSON.parse(File.read("people.json"), create_additions: true)
  end
  def save_people
    File.write("people.json", JSON.generate(@people), mode: "w")
  end

  def load_rentals
    JSON.parse(File.read("rentals.json"), create_additions: true)
  end
  def save_rentals
    File.write("rentals.json", JSON.generate(@rentals), mode: "w")
  end

end
