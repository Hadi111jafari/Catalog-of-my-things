require_relative './../classes/game'

describe 'game TDD' do
  context 'can be archived' do
    it 'response' do
      game = Game.new('2010-09-09', true,'2019-09-09')
      response = game.can_be_archived?
      expect(response).to eq(true)
    end
  end
end
