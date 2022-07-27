require 'rspec/autorun'
require_relative '../person'
require_relative '../book'
require_relative '../student'
require_relative '../teacher'
require_relative '../rentals'
require_relative '../classroom'

describe Student do
  before :each do
    @classroom = Classroom.new('History')
    @student = Student.new(17, @classroom)
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
