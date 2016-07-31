# 6.4 - Modules


# create module called Shout, define yell angrily and yell happily methods
module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yelling_happily(words)
    words + "!!!!!!" + ":) :) :)"
  end
end

