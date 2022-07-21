require_relative 'book'
require_relative 'person'
require_relative 'rentals'

person = Person.new(35, 'alex')

bookA = Book.new('book 1', 'Author X')
bookB = Book.new('book 2', 'Author X')

Rental.new(person, bookA, '2022-20-07')
Rental.new(person, bookB, '2021-15-10')

p person.rentals
p bookA.rentals
p bookB.rentals