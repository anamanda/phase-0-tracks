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
    @guessed_letters = ""
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

  # create method for when user2 is guessing letters
  def user2_letter(letter)

    # create counter that limits the amount of guesses user2 has
    while @guess_count < @allowed_guesses

      # if user2 already guessed a letter, it doesn't count against them
      if @guessed_letters.include? letter
        puts "You already guessed that letter."
        guess_count == guess_count
        break

      # otherwise...
      else

        # if user1 word includes the guessed letter,
        # put that letter in the correct word underscored slot and
        # tell them good guess
        if @user1_word.include? letter
          index = @user1_word.index(letter)
          @correct_word[index] = letter
          puts "Good guess!"

          # if user1 word = correct word with all the correctly guessed letters,
          # the user has won 
          if @correct_word == @user1_word
            @win = true
          end
          @guess_count += 1
          @correct_word

        # if user1 doesn't include the guessed letter, let user 2 know
        # it counts against them
        elsif !@user1_word.include? letter
          puts "Incorrect guess."
          @guess_count += 1
        end

        # add to the array of guessed letters
        @guessed_letters << letter
      end
    end

    # if win equals true, let them know they've won
    if @win == true
      puts "You've won!"
    else
      puts "You lost. Maybe next time."
    end


  end


end

game = WordGame.new("amanda")
game.underscore
p game.user2_letter("d")
p game.user2_letter("m")







