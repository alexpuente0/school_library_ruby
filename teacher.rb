class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknown', id = nil, parent_permission: true)
    super(age, id, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'age' => @age,
      'name' => @name,
      'id' => @id,
      'specialization' => @specialization
    }.to_json(*args)
  end

  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(teacher)
    new(teacher['age'].to_i, teacher['specialization'], teacher['name'], teacher['id'])
  end
end
