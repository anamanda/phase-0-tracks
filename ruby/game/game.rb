# User1 can enter a word, User2, another user, attempts to guess the word
# User2 can only guess twice as many times as there are letters in the word
# Repeated guesses do not get added to the guess count
# Start with as many _ as there are letters
# When user guesses a letter that is in the word, add that letter to the _ string
# User gets congratulatory message if they win, taunt message if they lose

class WordGame
  # make guess_count available to read outside of class
  attr_reader :guess_count

  # create initialize method
  def initialize(user1_word)
    @user1_word = user1_word
    @guess_count = 0
    @allowed_guesses = user1_word.length * 2
    @game_over = false
    @correct_word_underscore = ""
  end

  # add method to create as many underscores as there are letters
  def underscore
    @user1_word.length.times do
      @correct_word_underscore << "_"
    end
    @correct_word_underscore
  end

end