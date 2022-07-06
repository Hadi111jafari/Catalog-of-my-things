require_relative './../classes/book'

describe 'book TDD' do
  context 'can_be_archived' do
    it 'response' do
      book=Book.new
      response =book.can_be_archived?()
      expect(response).to eq(true)
    end
  end
end
