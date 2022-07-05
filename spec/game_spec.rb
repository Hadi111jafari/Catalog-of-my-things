require_relative './../game'

describe 'game TDD' do
  context 'can be archived' do
    it 'response' do
      game = Game.new
      response = game.can_be_archived?
      expect(response).to eq(true)
    end
  end
end
