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
    @correct_word = ""
    @win = false
  end

  # add method to create as many underscores as there are letters
  def underscore
    @user1_word.length.times do
      @correct_word << "_"
    end
    @correct_word
  end

  def user2_letter(letter)
    while guess_count < allowed_guesses

      if @user1_word.include? letter
        index = @user1_word.index(letter)
        @correct_word[index] = letter
        puts "Good guess!"
        if @correct_word == @user1_word
          @win = true
        end
        @correct_word

      elsif !@user1_word.include? letter
        puts "Incorrect guess."
      end

      guess_count += 1
    end


  end


end

game = WordGame.new("amanda")
game.underscore
p game.user2_letter("d")







