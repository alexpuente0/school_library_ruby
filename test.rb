require_relative 'nameable'
require_relative 'person'
require_relative 'cap_decorator'
require_relative 'trim_decorator'
require_relative 'student'
require_relative 'classroom'

student1 = Student.new(20, 'math', 'hugo')
student2 = Student.new(25, 'math', 'francis')
student3 = Student.new(30, 'math', 'louis')

p student1.classroom
p student2.classroom
p student3.classroom
