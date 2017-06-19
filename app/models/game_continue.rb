require 'pry'

def new_game_welcome(old_user)
  # TODO: Or, press to see all users and their winning ways...
  puts "Do you want to play again? Y/N?"
  answer = gets.chomp
  if answer.downcase == "y"
    new_game = Game.new(old_user.name)
    new_game.user = old_user
    puts "welcome back #{old_user.name}"
    a = random_word_to_array(random_word)
    b = current_board(random_word)
    checker(a,b, old_user)
  else
    puts "New player enter your name OR type EXIT to leave"
    answer = gets.chomp
    if answer == "EXIT"
      puts "Goodbye"
    else
      new_game = Game.new(answer)
      a = random_word_to_array(random_word)
      b = current_board(random_word)
      checker(a,b, new_game.user)
    end
  end
end
