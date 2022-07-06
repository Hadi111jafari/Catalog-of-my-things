require_relative './../classes/item'
describe 'Item TDD' do
  context 'can_be_archived' do
    it 'result should be true' do
      item = Item.new('2010-09-09')
      expect(item.can_be_archived?).to eq(true)
    end
  end
  context 'move_to_archive' do
    it 'result should be true' do
      item = Item.new('2010-09-09')
      item.move_to_archive
      expect(true).to eq(item.archived)
    end
  end
end
