require './base_file'

class App
    # data = @book_file.read_all_records
    # @book_file.write_object(json_book)
    @book_file = BaseFile.new('book.json')
    @music_album_file = BaseFile.new('music_album.json')
    @game_file = BaseFile.new('game.json')
end