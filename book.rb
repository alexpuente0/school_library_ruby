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
  
  def to_json(*args)
    {
      JSON.create_id  => self.class.name,
      'title'         => @title,
      'author'        => @author
    }.to_json(*args)
  end
  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(book)
    new(book['title'], book['author'])
  end
end
