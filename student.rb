require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', id = nil, parent_permission: true)
    super(age, name, id, parent_permission: parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def to_json(*args)
    {
      JSON.create_id  => self.class.name,
      'age'         => @age,
      'name'      => @name,
      'id'      => @id,
      'parent_permission' => @parent_permission
    }.to_json(*args)
  end
  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(student)
    new(student['age'].to_i, 'Subject', student['name'], student['id'].to_i, parent_permission: student['parent_permission'])
  end
  
end
