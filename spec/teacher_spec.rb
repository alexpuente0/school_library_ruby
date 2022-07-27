require 'rspec/autorun'
require_relative '../person.rb'
require_relative '../book.rb'
require_relative '../student.rb'
require_relative '../teacher.rb'
require_relative '../rentals.rb'
require_relative '../classroom.rb'

describe Teacher do
  before :each do
    @teacher = Teacher.new(55, 'Science', 'James')
    end

  describe '#instance' do
    context '#new teacher' do
      it 'should return an instance of teacher' do
        expect(@teacher).to be_an_instance_of Teacher
      end
    end

      it 'should have the correct name' do
        expect(@teacher.name).to eq 'James'
      end

      it 'should have the correct specialization' do
        expect(@teacher.specialization).to eq 'Science'
      end

    context '#can_use_services?' do
      it 'should use services' do
        expect(@teacher.can_use_services?).to be_truthy
      end
    end
  end
end