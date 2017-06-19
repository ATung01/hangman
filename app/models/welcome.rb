def new_game
  Games.new(get_user)
end

def get_user
  name = gets.chomp
  # User.new(name)
end

def welcome
  puts "Welcome, please enter your name"
  new_game
  # binding.pry
end
