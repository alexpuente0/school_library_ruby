require 'rspec/autorun'
require_relative '../person'
require_relative '../book'
require_relative '../student'
require_relative '../teacher'
require_relative '../rentals'
require_relative '../classroom'

describe Book do
  before :each do
    @book = Book.new('Brave New World', 'Aldous Huxley')
  end

  describe '#instance' do
    it 'should return an instance of Book' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe '#title' do
    it 'should return title' do
      expect(@book.title).to eq 'Brave New World'
    end
  end

  describe '#author' do
    it 'should return author' do
      expect(@book.author).to eq 'Aldous Huxley'
    end
  end

  describe '#rentals' do
    it 'should respond to rentals' do
      expect(@book).to respond_to(:rentals)
    end
  end
end
