require './base_file'
require './classes/music_album'
require './classes/game'
require './classes/author'
require 'json'

class App
  def initialize
    @book_file = BaseFile.new('./json/book.json')
    @music_album_file = BaseFile.new('./json/music_album.json')
    @genre_file = BaseFile.new('./json/genre.json')
    @game_file = BaseFile.new('./json/game.json')
    @author_file = BaseFile.new('./json/author.json')
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
    data = @game_file.read_all_records
    if data.empty?
      puts("No game found. \n")
    else
      puts("List of game: \n")
      puts(data)
    end
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
    data = @author_file.read_all_records
    if data.empty?
      puts("No Authors found. \n")
    else
      puts("List of Authors: \n")
      puts(data)
    end
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

  def add_game # rubocop:disable Metrics/MethodLength
    puts "Adding New  Games\n"
    print('Enter Author first name: ')
    first_name = gets.chomp.to_s
    print('Enter Author last name: ')
    last_name = gets.chomp.to_s
    author = Author.new(first_name, last_name)
    json_author = author.to_json
    json_author = json_author.to_s.gsub('@', '')
    @author_file.write_object(json_author)
    puts 'Author created'
    puts('Enter game published date (YYYY-MM-DD): ')
    published_date = gets.chomp.to_s
    puts('Is this game multiplayer? [Y/N]: ')
    response = gets.chomp
    multiplayer = response.downcase == 'y'
    puts('Date on Game last played at (YYYY-MM-DD): ')
    last_played_at = gets.chomp.to_s
    game = Game.new(published_date, multiplayer, last_played_at)
    json_game = game.to_json
    json_game = json_game.to_s.gsub('@', '')
    puts json_game
    @game_file.write_object(json_game)
    puts("Created game id: #{game.id} published: #{game.publish_date}")
  end
end
