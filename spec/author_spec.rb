require_relative './../author'
require_relative './../item'
describe 'author TDD' do
  context 'Add Item' do
    it 'item created' do
      author=author.new
      item=Item.new
      expect(author.add_item(item)).to eq(true)
    end
end