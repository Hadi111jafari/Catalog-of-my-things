require_relative './../source'
require_relative './../item'
describe 'source TDD' do
  context 'Add Item' do
    it 'item created' do
      source=Source.new
      item=Item.new
      expect(source.add_item(item)).to eq(true)
    end
end