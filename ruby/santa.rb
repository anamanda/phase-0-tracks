# 6.3 Challenge

# create Santa class
class Santa

  # declare attr_reader and attr_accessor to make the code accessible outside of the class
  attr_reader :age, :ethnicity
  attr_accessor :gender


  # create initialize method, add a gender and ethnicity parameter
  def initialize(gender, ethnicity)

    # print initialization sentence
    puts "Initializing Santa instance"

    # create a gender attribute that is passed in to this method
    @gender = gender

    # create an ethnicity attribute that is passed in to this method
    @ethnicity = ethnicity

    # create a reindeer attribute that holds an array of reindeer names (ranked from most preferred to least preferred)
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

  # create setter method to age Santa by one
  def celebrate_birthday=(old_age)
    @age = old_age + 1
  end

  # create setter method to move a reindeer's name from its position to the last position in the ranking array
  def get_mad_at=(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end


  # THE FOLLOWING IS REFACTORED AT THE TOP OF THE CLASS INTO ATTR_ACCESSOR
  # create setter method to reassign gender
  def gender_change=(new_gender)
    @gender = new_gender
  end

  # THE FOLLOWING IS REFACTORED AT THE TOP OF THE CLASS INTO ATTR_READER
  # # create getter method for age
  # def age
  #   @age
  # end

  # # create getter method for ethnicity
  # def ethnicity
  #   @ethnicity
  # end

end




# # Driver Code to test instance methods
# # create a new Santa instance
# # call speak method on it and cookies and milk method on it

# first_santa = Santa.new

# first_santa.speak
# first_santa.eat_milk_and_cookies("snickerdoodle")




# # Driver Code to store & print all the Santas
# # store attributes in arrays, create loop to iterate through arrays, then print

# santas = []

# santa_genders = ["female", "male", "agender", "bigender", "N/A"]
# santa_ethnicity = ["black", "Latino", "white", "Japanese", "unicorn"]

# santa_genders.length.times do |i|
#   santas << Santa.new(santa_genders[i], santa_ethnicity[i])
# end

# # p santas




# # Driver Code to test getter & setter methods and attr_reader & attr_accessor shortcuts
# # edit age, gender, reindeer ranking, print along the way

# new_santa = Santa.new("female", "unicorn")
# puts "Santa is #{new_santa.age}."
# new_santa.celebrate_birthday = 20
# puts "Santa is #{new_santa.age}."

# p new_santa
# new_santa.gender_change = "agender"
# new_santa.get_mad_at = "Vixen"
# p new_santa




# Driver Code to only print all the Santas
# store attributes in array, create loop that picks randomly & picks age randomly & prints each new Santa

santa_genders = ["female", "male", "agender", "bigender", "N/A"]
santa_ethnicity = ["black", "Latino", "white", "Japanese", "unicorn"]

20.times do 
  a_new_santa = Santa.new(santa_genders.sample, santa_ethnicity.sample)
  a_new_santa.celebrate_birthday = rand(140)
  p a_new_santa
end





