require_relative './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(age, name = 'Unknown', id, parent_permission: true)
    super()
    @id = id
    @id = Random.new.rand(1..1000) if id.nil?
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rentals(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  private

  def of_age?
    @age >= 18
  end
end
