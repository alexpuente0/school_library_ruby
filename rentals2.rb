class Rental2
  attr_accessor :date
  attr_reader :person_id, :book_title

  def initialize(date, person_id, book_title)
    @date = date
    @person_id = person_id
    @book_title = book_title
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'date' => @date,
      'person_id' => @person.id,
      'book_title' => @book.title
    }.to_json(*args)
  end

  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(rental2)
    new(rental2['date'], rental2['person_id'], rental2['book_title'])
  end
end
