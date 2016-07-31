# 6.4 - Modules


# # create module called Shout, define yell angrily and yell happily methods
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!!!!" + " :) :) :)"
#   end
# end


# # Driver Code for yell_angrily and yell_happily

# p Shout.yell_angrily("This isn't working")
# p Shout.yell_happily("Oh, wait, it is")


# create mixin Shout module
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!!!!" + " :) :) :)"
  end
end

# create Customer class
class Customer
  include Shout
end

# create Child class
class Child
  include Shout
end

# Driver code for Customer and Child classes / Shout module
# create new Customer / Child instances and call yell_angrily / yell_happily methods on them

customer = Customer.new
puts customer.yell_angrily("You got my order wrong")
puts customer.yell_happily("Thanks for your help")

child = Child.new
puts child.yell_angrily("I don't want to eat my vegetables")
puts  child.yell_happily("I love ice cream")







