# User 1 will enter a word
# User 2 will attempt to guess a word
# User 2's guess are based on how long the word is (5 letters = 5 guesses)


# ****** User 2 repeat guesses do not count (I am not sure what this means, so I made the game run like Wheel of Fortune: if they guess a letter that appears multiple times in the word, the game will give them every spot where that letter is, and wont count it as multiple guesses.)c********


# User 2 needs continual feedback based on the current state of the word.
# IF User 2 guesses word, congratulate them
# IF User 2 does not guess word, taunt them




class WordGame
  attr_reader :guess_count
  attr_reader :word_dashes
  attr_reader :guesses_allowed

#create definition that can take the users word and initialize a word game class
  def initialize(word)
    @secret_word = word
    @word_dashes = "_" * word.length
    @guess_count = 0
    @guesses_allowed = word.length
    p get_word
    guess_counter
  end

  def get_word
    @word_dashes
  end

  def guess_letter(letter)
    counter = -1
    @secret_word.each_char do |sw_letter|
      counter += 1
      if sw_letter == letter
       @word_dashes[counter] = letter
      end
    end
    if !@secret_word.include?(letter)
      puts "Nope!"
    end
    @guess_count += 1
    p get_word
    guess_counter
  end

  def guess_counter
    puts "You have #{@guesses_allowed - @guess_count} guesses left!"
    @guess_count
  end
end

#### Driver Code ####

# Tell User 1 to enter a word
puts "User 1: Enter a word!"
word = gets.chomp
game = WordGame.new(word)

# Tell User 2 to guess a word

while game.guess_count < game.guesses_allowed
  puts "User 2: Guess a letter in the word"
  letter = gets.chomp
  game.guess_letter(letter)
  if game.word_dashes == word
      puts "You won!!! #{word.upcase} is the secret word!"
  break
  elsif (game.word_dashes != word) && (game.word_dashes == game.guesses_allowed)
      puts "You lost. You are lost. Winter is coming."
  end
end