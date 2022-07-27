require 'rspec/autorun'
require_relative '../person.rb'
require_relative '../book.rb'
require_relative '../student.rb'
require_relative '../teacher.rb'
require_relative '../rentals.rb'
require_relative '../classroom.rb'

describe Student do
  before :each do
    @classroom = Classroom.new('History')
    @student = Student.new(age = 17, classroom = @classroom)
  end

  describe '#instance' do
    context 'new student' do
      it 'should return an instance of student' do
        expect(@student).to be_an_instance_of Student
      end

      it 'should be in the correct classroom' do
        expect(@student.classroom).to eq @classroom
      end
    end

    context '#play_hooky' do
      it "should return ¯\(ツ)/¯" do
        expect(@student.play_hooky).to eq '¯\(ツ)/¯'
      end
    end
  end
end