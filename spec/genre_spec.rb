require_relative './../classes/genre'
require_relative './../classes/item'
describe 'Genre TDD' do
  context 'Add Item' do
    it 'item created' do
      genre = Genre.new('Comedy')
      item = Item.new('2010-09-09')
      expect(genre.add_item(item)).to eq(true)
    end
  end
end
