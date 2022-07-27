require 'rspec/autorun'
require_relative '../person'
require_relative '../book'
require_relative '../student'
require_relative '../teacher'
require_relative '../rentals'
require_relative '../classroom'

describe Person do
  describe '#instance' do
    person = Person.new(12, nil, 'Big Red', parent_permission: false)

    it 'should return an instance of person' do
      expect(person).to be_an_instance_of Person
    end

    it 'should have parent_permission set to false' do
      expect(person.parent_permission).to be_falsey
    end

    it 'should have the correct name' do
      expect(person.name).to eq 'Big Red'
    end

    it 'should respond to rentals' do
      expect(person).to respond_to(:rentals)
    end
  end
end
