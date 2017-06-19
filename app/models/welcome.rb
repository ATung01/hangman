def welcome
  puts "Welcome, please enter your name"
  new_game
  # binding.pry
end

def new_game
  Game.new(player)
end

def player
  player = gets.chomp
end
