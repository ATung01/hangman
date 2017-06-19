require_relative '../config/environment'
require_relative '../app/models/game_continue'
require_relative '../app/models/game_logic'
require_relative '../app/models/welcome'
require_relative '../app/classes/games_class'
require_relative '../app/classes/user_class'

# Game start
# welcome message
# user input for new user
# word generated
# game logic
# user.stats updated
# continue as new user, old user, or exit


game = welcome
random = random_word
a = word_to_display(random)
b = remaining_letters_missing(random)
checker(a,b, game.user)
