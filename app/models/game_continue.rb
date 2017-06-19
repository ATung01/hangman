def new_game_welcome(old_user)
  puts "Do you want to play again? Y or N?"
  answer = gets.chomp
  if answer.downcase == "y"
    blah = Games.new(old_user.name)
    binding.pry
    blah.user = old_user

    puts "welcome back #{user.name}"
    random = random_word
    a = word_to_display(random)
    b = remaining_letters_missing(random)
    checker(a, b, old_user)
    # checker(["a", "n", "d"], [nil,nil,nil], new_user)
    # play game
  else
    puts "New player enter your name OR type EXIT to leave"
    answer = gets.chomp
    if answer == "Exit"
      puts "Goodbye"
      # break
    else
      Games.new(answer)
    end
  end
end
