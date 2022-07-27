require_relative 'book'
require_relative 'person'
require_relative 'rentals'

person = Person.new(35, 'alex')

book_a = Book.new('book 1', 'Author X')
book_b = Book.new('book 2', 'Author X')

Rental.new('2022-20-07', person, book_a)
Rental.new('2021-15-10', person, book_b)

p person.rentals[0].date
p person.rentals[1].date
