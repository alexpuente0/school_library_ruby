require_relative '../trim_decorator'
require_relative '../person'
require_relative '../nameable'
require_relative '../student'
require_relative '../teacher'

describe TrimmerDecorator do
  before :each do
    @teacher = Teacher.new(55, 'Science', 'James Smith Jr.')
  end
  context 'test trimmer' do
    it 'should return a name trimmed' do
      @trimmed = TrimmerDecorator.new(@teacher)
      expect(@trimmed.correct_name).to eql 'James Smit'
    end
  end
end
