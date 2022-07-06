require './base_file'

class App
    @book_file = BaseFile.new('./json/book.json')
    @music_album_file = BaseFile.new('./json/music_album.json')
    @game_file = BaseFile.new('./json/game.json')

    def list_books
        puts "List of books"
    end

    def list_music_albums
        puts "List of music albums"
    end

    def list_games
        puts "List of games"
    end

    def list_genres
        puts "List of Genres"
    end

    def list_labels
        puts "List of labels"
    end

    def list_authors
        puts "list of Authors"
    end

    def list_sources
        puts "List of Sources"
    end

    def add_book
        puts "Add book"
    end

    def add_music_album
        puts "Add Music Album"
    end

    def add_game
        puts "Add games"
    end
end
