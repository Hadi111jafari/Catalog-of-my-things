require './base_file'
require './classes/music_album'
require 'json'

class App
  def initialize
    @book_file = BaseFile.new('./json/book.json')
    @music_album_file = BaseFile.new('./json/music_album.json')
    @game_file = BaseFile.new('./json/game.json')
    @genre_file = BaseFile.new('./json/genre.json')
  end

  def list_books
    puts 'List of books'
  end

  def list_music_albums
    data = @music_album_file.read_all_records
    if data.empty?
      puts("No music albums found. \n")
    else
      puts("List of music albums: \n")
      puts(data)
    end
  end

  def list_games
    puts 'List of games'
  end

  def list_genres
    data = @genre_file.read_all_records
    if data.empty?
      puts("No genres found. \n")
    else
      puts("List of genres: \n")
      puts(data)
    end
  end

  def list_labels
    puts 'List of labels'
  end

  def list_authors
    puts 'list of Authors'
  end

  def list_sources
    puts 'List of Sources'
  end

  def add_book
    puts 'Add book'
  end

  def add_music_album
    puts('Enter published date (YYYY-MM-DD): ')
    published_date = gets.chomp.to_s
    puts('Is on spotify? [Y/N]: ')
    response = gets.chomp
    on_spotify = response.downcase == 'y'
    music_album = MusicAlbum.new(published_date, on_spotify)
    json_music_album = music_album.to_json
    json_music_album = json_music_album.to_s.gsub('@', '')
    @music_album_file.write_object(json_music_album)
    puts("Created music_album id: #{music_album.id} published: #{music_album.publish_date}")
  end

  def add_game
    puts 'Add games'
  end
end
