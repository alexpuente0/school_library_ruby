require 'rspec/autorun'
require_relative '../person.rb'
require_relative '../book.rb'
require_relative '../student.rb'
require_relative '../teacher.rb'
require_relative '../rentals.rb'
require_relative '../classroom.rb'

describe Person do
  describe '#instance' do
      person = Person.new(age = 12, id = nil, name = 'Big Red', parent_permission: false)

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

  