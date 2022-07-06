require_relative './../classes/label'
require_relative './../classes/item'
describe 'label TDD' do
  context 'Add Item' do
    it 'item created' do
      label=Label.new
      item=Item.new
      expect(label.add_item(item)).to eq(true)
    end
  end
end