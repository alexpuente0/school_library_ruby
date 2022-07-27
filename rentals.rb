class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    person.add_rentals(self)
    book.add_rentals(self)
  end

  def to_json(*args)
    {
      JSON.create_id => 'Rental2',
      'date' => @date,
      'person_id' => @person.id,
      'book_title' => @book.title
    }.to_json(*args)
  end

  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(rental)
    new(rental['date'], rental['person_id'], rental['book_title'])
  end
end
