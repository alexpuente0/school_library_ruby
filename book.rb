class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rentals(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end
end
