require_relative './../classes/author'
require_relative './../classes/item'
describe 'author TDD' do
  context 'Create author' do
    it 'author created' do
      author = Author.new('Amrendra','Kumar')
      expect(author.id).to be > 0
    end
  end
  context 'Add Item' do
    it 'item added' do
      author = Author.new('Amrendra', 'Kumar')
      item = Item.new('2010-09-09')
      author.add_item(item)
      expect(author.items.include?(item)).to eq(true)
    end
  end
end
