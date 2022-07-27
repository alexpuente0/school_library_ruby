require 'rspec/autorun'
require_relative '../person.rb'
require_relative '../book.rb'
require_relative '../student.rb'
require_relative '../teacher.rb'
require_relative '../rentals.rb'
require_relative '../classroom.rb'

describe Rental do
  describe '#instance' do
    classroom = Classroom.new('Math')
    student = Student.new(age = 25, name = 'Alex', classroom = classroom)
    teacher = Teacher.new(age = 33, name = 'Rudolph', specialization = 'English')
    book = Book.new('It', 'Stephen King')

    first_rental = Rental.new('2021-10-15', student, book)
    second_rental = Rental.new('2021-10-14', teacher, book)

    it 'should be an instance of Rental' do
      expect(first_rental).to be_an_instance_of Rental
      expect(second_rental).to be_an_instance_of Rental
    end

    it 'should return the correct date for first_rental' do
      expect(first_rental.date).to eq '2021-10-15'
    end

    it 'should return the correct date for second_rental' do
      expect(second_rental.date).to eq '2021-10-14'
    end

    it 'should return person to be student' do
      expect(first_rental.person).to eq student
    end

    it 'should return person to be teacher' do
      expect(second_rental.person).to eq teacher
    end

    it 'should return book to be the correct book' do
      expect(first_rental.book).to eq book
    end

    context '#book' do
      it 'should have the rentals include first_rental and second_rental' do
        expect(book.rentals).to include(first_rental)
        expect(book.rentals).to include(second_rental)
      end
    end

    context '#person' do
      it 'should have the rentals include first_rental' do
        expect(student.rentals).to include(first_rental)
      end
      it 'should have the rentals include second_rental' do
        expect(teacher.rentals).to include(second_rental)
      end
    end
  end
end