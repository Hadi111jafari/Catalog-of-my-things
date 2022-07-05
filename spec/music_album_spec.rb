require_relative './../music_album'

describe 'music_album TDD' do
  context 'can be archived' do
    it 'response' do
      music_album = MusicAlbum.new
      response = music_album.can_be_archived?
      expect(response).to eq(true)
    end
  end
end
