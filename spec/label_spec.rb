require_relative './../label'
require_relative './../item'
describe 'label TDD' do
  context 'Add Item' do
    it 'item created' do
      label=label.new
      item=Item.new
      expect(label.add_item(item)).to eq(true)
    end
end