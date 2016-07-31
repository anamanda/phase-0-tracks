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

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!!!!" + " :) :) :)"
end
