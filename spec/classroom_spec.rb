require 'rspec/autorun'
require_relative '../person'
require_relative '../book'
require_relative '../student'
require_relative '../teacher'
require_relative '../rentals'
require_relative '../classroom'

describe Classroom do
  before :each do
    @classroom = Classroom.new('History')
    @student = Student.new(17, @classroom)
    @classroom.add_student @student
  end

  describe '#instance' do
    it 'should return an instance of Classroom' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it 'should return the correct label' do
      expect(@classroom.label).to eq 'History'
    end
  end

  describe '#add_student' do
    it 'should add student to Classroom' do
      expect(@classroom.students).to include(@student)
    end
  end

  describe 'student' do
    it 'should be in the correct classroom' do
      expect(@student.classroom).to eq @classroom
    end
  end
end
