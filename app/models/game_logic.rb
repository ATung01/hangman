require 'pry'

def take_a_guess
  puts "Guess a letter or word: "
  guess = gets.chomp.downcase
end

def checker(random_word_to_array, current_board, user)
  penalty = 0
  miss = []
  displayer(current_board)
  puts ""
  while penalty < 8
    guess = take_a_guess
    if guess == random_word_to_array.join
      user.wins += 1
      puts ("Yay!")
      new_game_welcome(user)
      # TODO: another elsif to check if the letter has been guessed before
    elsif random_word_to_array.include?(guess)
      random_word_to_array.each_with_index do |letter, index|
        current_board[index] = letter if letter == guess
        #changes letter if found
        #split into different method
      end
      displayer(current_board)
      if current_board == random_word_to_array
        user.wins += 1
        puts "yay!!!!!"
        new_game_welcome(user)
      end
    else
      penalty += 1
      p "WRONG #{wrong_letters(miss, guess)}"
    end
  end
  user.losses += 1
  puts "You lose. :()"
  new_game_welcome(user)
end

def wrong_letters(miss, guess)
  miss << guess
  miss.join(", ")
end

def displayer(current_board)
  current_board.each do |letter|
    if letter == nil
      print "_ "
    else
      print letter + " "
    end
  end
end





# def body_parts
#   body = ["Here's your left leg", "And your right leg", "There's your body",
#   "A left arm", "A right arm", "I see your neck... be careful", "Your head... your hanged"]
#
# end

# # welcome
# a = word_to_array('hangman')
# b = guess_array(('hangman'))
# game = welcome
# random = random_word
# a = word_to_display(random)
# b = current_board(random)
# checker(a,b, game.user)
