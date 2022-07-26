require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

    def to_json(*args)
    {
      JSON.create_id  => self.class.name,
      'age'         => @age,
      'name'      => @name,
      'parent_permission' => @parent_permission
    }.to_json(*args)
  end
  # Deserialize JSON string by constructing new object with arguments.
  def self.json_create(student)
    new(student['age'].to_i, student['name'], parent_permission: student['parent_permission'])
  end
  
end
