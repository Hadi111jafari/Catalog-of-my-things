require_relative './../classes/music_album'

describe 'music_album TDD' do
  context 'Create music album' do
    it 'album created' do
      music_album = MusicAlbum.new('2022-07-05', true)
      expect(music_album.id).to be > 0
    end
  end
  context 'Can be archived?' do
    it 'correct response' do
      music_album = MusicAlbum.new('2022-07-05', true)
      expect(music_album.can_be_archived?).to eq(false)
    end
  end
end
