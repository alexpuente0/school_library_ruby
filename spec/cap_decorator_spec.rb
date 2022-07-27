require_relative '../cap_decorator'

describe CapitalizeDecorator do
  before :each do
    @classroom = Classroom.new('History')
    @student = Student.new(55, @classroom, 'alexis')
  end
  context 'test capitalizer' do
    it 'should return a name capitalized' do
      Capitalized = CapitalizeDecorator.new(@student)
      expect(Capitalized.correct_name).to eql "Alexis"
    end
  end
end
