require 'pry'

def new_game_welcome(old_user)
  puts "Do you want to play again? Y/N? Or, type 'show' to see Leaderboard..."
  answer = gets.chomp
  if answer.downcase == "y"
    # if we do Game.new, it makes a new user.  which we don't want.
    # but we do want the new game.
    new_game = Game.new(old_user.name)
    new_game.user = old_user
    User.all.pop
    puts "welcome back #{old_user.name}"
    a = random_word_to_array(random_word)
    b = current_board(random_word)
    checker(a,b, old_user)
  elsif answer == 'show'
    # TODO: still a little wonky with the users...
    User.all.collect do |user|
      puts "#{user.name}:  wins: #{user.wins} losses: #{user.losses}"
    end
    # Paul:  wins: 2 losses: 0
    # Paul:  wins: 0 losses: 0   <-- see, this is not good...
    # Luke:  wins: 1 losses: 0
    # Stacy:  wins: 0 losses: 1
    new_game_welcome(old_user)
  else
    puts "New player enter your name OR type EXIT to leave"
    answer = gets.chomp.downcase
    if answer == "exit"
      puts "Goodbye"
      exit!
    else
      new_game = Game.new(answer)
      a = random_word_to_array(random_word)
      b = current_board(random_word)
      checker(a,b, new_game.user)
    end
  end
end
