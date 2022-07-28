require 'rspec/autorun'
require_relative '../cap_decorator'
require_relative '../person'
require_relative '../nameable'
require_relative '../student'
require_relative '../teacher'
require_relative '../classroom'

describe CapitalizeDecorator do
  before :each do
    @classroom = Classroom.new('History')
    @student = Student.new(55, @classroom, 'alexis')
  end
  context 'test capitalizer' do
    it 'should return a name capitalized' do
      @capitalized = CapitalizeDecorator.new(@student)
      expect(@capitalized.correct_name).to eql 'Alexis'
    end
  end
end
