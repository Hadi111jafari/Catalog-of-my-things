require_relative './../classes/book'

describe 'book TDD' do
  context 'can_be_archived' do
    it 'response' do
      book = Book.new('2010-01-01', 'publisher', 'bad')
      response = book.can_be_archived?
      expect(response).to eq(true)
    end
  end
end

describe Book do
  before :each do
    @book = Book.new('2010-01-01', 'publisher', 'good')
  end
  describe 'should instance of Book' do
    it 'is an instance of Book and takes 3 parameter' do
      expect(@book).to be_instance_of(Book)
    end
    it 'is a child of Item' do
      expect(@book).to be_kind_of(Item)
    end
  end
  describe 'initialize' do
    it 'should be initialized with publiher' do
      expect(@book.publisher).to eql('publisher')
    end
    it 'should be initialized with cover_state' do
      expect(@book.cover_state).to eql('good')
    end
  end
end
