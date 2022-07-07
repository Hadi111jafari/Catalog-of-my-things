require_relative './../classes/genre'
require_relative './../classes/item'
describe 'Genre TDD' do
  context 'Create genre' do
    it 'genre created' do
      genre = Genre.new('Comedy')
      expect(genre.id).to be > 0
    end
  end
  context 'Add Item' do
    it 'item created' do
      genre = Genre.new('Supense')
      item = Item.new('2010-09-09')
      genre.add_item(item)
      expect(genre.items.include?(item)).to eq(true)
    end
  end
end
