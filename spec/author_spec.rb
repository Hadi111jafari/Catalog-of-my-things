require_relative './../classes/author'
require_relative './../classes/item'
describe 'author TDD' do
  context 'Add Item' do
    it 'item created' do
      author = Author.new
      item = Item.new('2010-09-09')
      expect(author.add_item(item)).to eq(true)
    end
  end
end
