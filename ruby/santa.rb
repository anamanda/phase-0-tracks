# 6.3 Challenge

# create Santa class
class Santa

  # create initialize method, add a gender and ethnicity parameter
  def initialize(gender, ethnicity)

    # print initialization sentence
    puts "Initializing Santa instance"

    # create a gender attribute that is passed in to this method
    @gender = gender

    # create an ethnicity attribute that is passed in to this method
    @ethnicity = ethnicity

    # create a reindeer attribute that holds an array of reindeer names
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

    # create an age attribute that defaults to 0
    @age = 0


  end


  # create speak instance method where Santa says something
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end


  # create instance method that takes in a cookie type and Santa says that was a good cookie
  def eat_milk_and_cookies(cookie_type)
    puts"That was a good #{cookie_type}!"
  end

end

# Driver Code to test instance methods

# create a new Santa instance
first_santa = Santa.new

# call speak method on it and cookies and milk method on it
first_santa.speak
first_santa.eat_milk_and_cookies("snickerdoodle")