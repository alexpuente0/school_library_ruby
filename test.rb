require_relative 'nameable'
require_relative 'person'
require_relative 'cap_decorator'
require_relative 'trim_decorator'
require_relative 'sturdent'
require_relative 'classroom'

# person = Person.new(22, 'maximilianus')
# person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# p capitalized_trimmed_person.correct_name

history = Classroom.new('History')
music = Classroom.new('Music')

student1 = Student.new(20, history, 'hugo')
student2 = Student.new(25, music, 'francis')
student3 = Student.new(30, history, 'louis')

p history.students
p music.students
p student1.classroom
p student2.classroom
p student3.classroom
