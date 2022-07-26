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
      JSON.create_id  => self.class.name,
      'date'         => @date,
      'person'      => @person,
      'book' => @book
    }.to_json(*args)
  end
  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(teacher)
    new(teacher['age'].to_i, teacher['name'], teacher['specialization'])
  end

end
