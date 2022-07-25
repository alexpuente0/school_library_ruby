require_relative 'book'
require_relative 'rentals'
require_relative 'person'
require_relative 'sturdent'
require_relative 'teacher'

class Display
  attr_accessor :books, :people, :rentals, :classroom

  def list_of_books(books)
    books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_of_people(people)
    people.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def display_rentals_by_person_id(_people, _books, rentals)
    print 'Person ID: '
    person_id = gets.chomp.to_i
    rentals.each do |rent|
      puts "Date: #{rent.date}, Book: #{rent.book.title} by #{rent.book.author}." if rent.person.id == person_id
    end
  end
end
