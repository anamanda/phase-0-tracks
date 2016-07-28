# 6.3 Challenge

# create Santa class
class Santa

  # create initialize method
  def initialize
    puts "Initializing Santa instance"
  end

  # create speak instance method where Santa says something, return phrase
  def speak
    speak_phrase = "Ho, ho, ho! Haaaappy holidays!"
    speak_phrase
  end

  # create instance method that takes in a cookie type and Santa says that was a good cookie, return phrase
  def eat_milk_and_cookies(cookie_type)
    cookie_phrase = "That was a good #{cookie_type}!"
    cookie_phrase
  end

end

# # Driver Code to test instance methods

# # create a new Santa instance
# first_santa = Santa.new

# # call speak method on it and cookies and milk method on it
# puts first_santa.speak
# puts first_santa.eat_milk_and_cookies("snickerdoodle")