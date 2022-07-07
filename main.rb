require './app'

def main # rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity
  system('cls')
  app = App.new
  puts('-----------------------------------')
  puts "\nWelcome to Catalog Of My Things App!!\n\n"
  puts('-----------------------------------')

  loop do
    menu
    input = user_input
    case input
    when 1 then app.list_books
    when 2 then app.list_music_albums
    when 3 then app.list_games
    when 4 then app.list_genres
    when 5 then app.list_labels
    when 6 then app.list_authors
    when 7 then app.add_book
    when 8 then app.add_music_album
    when 9 then app.add_game
    else
      #   write_file.close_file
      puts 'Bye! Thank You For Using This App.'
      break
    end
    break unless input.positive? && input < 11
  end
end

def menu
  puts "\nPlease choose an option by entering a number:\n\n"
  puts '1. List all books.'
  puts '2. List all music albums.'
  puts '3. List of games.'
  puts '4. List all genres.'
  puts '5. List all labels (e.g. Gift, New).'
  puts '6. List all authors (e.g. Stephen King).'
  puts '7. Add a book.'
  puts '8. Add a music album.'
  puts '9. Add a game.'
  puts '10. Exit'
end

def user_input
  input = gets.chomp.to_i
  while input > 10 || input < 1
    puts 'Please enter a valid option between 1 to 10: '
    input = gets.chomp.to_i
  end
  system('cls')
  input
end

main
