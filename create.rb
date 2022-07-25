class Create
  attr_accessor :books, :people, :rentals, :classroom

  def initialize
    @classroom = Classroom.new('Subject')
  end

  def input(text, range)
    loop do
      print text
      input = gets.chomp.to_i
      return input if range.include?(input)
    end
  end

  def input_letters(text, range)
    loop do
      print text
      input = gets.chomp.upcase
      return input if range.include?(input)
    end
  end

  def create_student(people)
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    permission_input = input_letters('Has parent permission? [Y/N]: ', %w[Y N])
    case permission_input
    when 'Y'
      permission = true
    when 'N'
      permission = false
    end

    people.push(Student.new(age, classroom, name, parent_permission: permission))
    puts 'Person created successfully'
  end

  def create_teacher(people)
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'specialization: '
    specialization = gets.chomp

    people.push(Teacher.new(age, specialization, name))
    puts 'Person created successfully'
  end

  def create_person(people)
    student_or_teacher = input('Do you want to create a student (1) or a teacher (2)? [Input a number]: ', (1..2))
    case student_or_teacher
    when 1
      create_student(people)
    when 2
      create_teacher(people)
    end
  end

  def create_book(books)
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp

    books.push(Book.new(title, author))
    puts 'Book created successfully'
  end

  def create_rental(books, people, rentals)
    puts 'Select a book from the following list by number: '
    books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title} Author: #{book.author}"
    end
    book_index = input('Write a valid number ', (0...books.length))

    puts 'Select a person from the following list by number (not id): '
    people.each_with_index do |person, index|
      puts "#{index}) [#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = input('Write a valid number ', (0...people.length))

    print 'Date: '
    date = gets.chomp
    rentals.push(Rental.new(date, people[person_index], books[book_index]))
    puts 'Rental created successfully.'
  end
end
