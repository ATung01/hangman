
def random_word
  random = RandomWordGenerator.word
end


def random_word_to_array(random_word)
  random_word.split("")
end

def current_board(random_word)
  current_board = Array.new(random_word.length)
end
