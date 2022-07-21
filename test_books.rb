require_relative 'book'
require_relative 'person'
require_relative 'rentals'

person = Person.new(35, 'alex')

book_a = Book.new('book 1', 'Author X')
book_b = Book.new('book 2', 'Author X')

Rental.new(person, book_a, '2022-20-07')
Rental.new(person, book_b, '2021-15-10')

p person.rentals
p book_a.rentals
p book_b.rentals
