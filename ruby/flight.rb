# 6.4 - Modules

# declare Flight module, define take_off method that takes altitude as an argument
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude}"
  end
end

# declare Bird class, add Flight module
class Bird
  include Flight
end

# declare Plane class, add Flight module
class Plane
  include Flight
end

