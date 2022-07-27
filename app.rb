require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rentals'
require_relative 'rentals2'
require_relative 'classroom'

class App
  attr_accessor :books, :people, :rentals, :classroom

  def initialize
    @books = []
    @books = load_books if File.exist?('books.json')
    @people = []
    @people = load_people if File.exist?('people.json')
    @rentals = []
    load_rentals if File.exist?('rentals.json')
  end

  def load_books
    JSON.parse(File.read('books.json'), create_additions: true)
  end

  def save_books
    File.write('books.json', JSON.generate(@books), mode: 'w')
  end

  def load_people
    JSON.parse(File.read('people.json'), create_additions: true)
  end

  def save_people
    File.write('people.json', JSON.generate(@people), mode: 'w')
  end

  def load_rentals
    rentals2 = JSON.parse(File.read('rentals.json'), create_additions: true)
    rentals2.each do |rental2|
      person_rent = @people.find { |person| person.id == rental2.person_id }
      book_rent = @books.find { |book| book.title == rental2.book_title }
      rentals.push(Rental.new(rental2.date, person_rent, book_rent))
    end
  end

  def save_rentals
    File.write('rentals.json', JSON.generate(@rentals), mode: 'w')
  end
end
