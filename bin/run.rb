require_relative '../config/environment'
require_relative '../app/models/game_continue'
require_relative '../app/models/game_logic'
require_relative '../app/models/welcome'
require_relative '../app/classes/games_class'
require_relative '../app/classes/user_class'
require_relative '../app/models/prepare_game.rb'
# Game start
# welcome message
# user input for new user
# word generated
# game logic
# user.stats updated
# continue as new user, old user, or exit


game = welcome
word = random_word
a = random_word_to_array(word)
b = current_board(word)
checker(a,b, game.user)
