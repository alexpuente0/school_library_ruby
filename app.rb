require_relative 'sturdent'
require_relative 'teacher'
require_relative 'book'
require_relative 'rentals'
require_relative 'classroom'

class App
  attr_accessor :books, :people, :rentals, :classroom

  def initialize
    @books = []
    @people = []
    @rentals = []
  end
end
