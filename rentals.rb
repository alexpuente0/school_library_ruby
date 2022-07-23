require 'pry'


class Rental
  attr_accessor :date

  def initialize(person, book, date)
    @person = person
    @book = book
    @date = date
    person.add_rentals(self)
    book.add_rentals(self)
  end
end
binding.pry