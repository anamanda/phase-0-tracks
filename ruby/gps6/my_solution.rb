# Virus Predictor

# I worked on this challenge [by myself, with: GPS Lorena Mesa].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# pulls in the data from 'state_data.rb' from your own directory
# require vs. require_relative: require pulls in data from a Ruby-found directory/library (AKA a gem)
require_relative 'state_data'

class VirusPredictor

  # initialize method, will run every time an instance of the class is created
  # states are defined
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # stores result of predicted deaths method (number of deaths based on population density)
  # stores result of the speed of the spread based on population density
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # sets up calculation for number of deaths based on population density
  # multiply population by a certain decimal based on population density
  # prints first half of sentence to terminal saying state will lose (number of deaths, calculated in method)
  def predicted_deaths
    # predicted deaths is solely based on population density
    return (@population * 0.4).floor if @population_density >= 200
    return (@population * 0.3).floor if @population_density >= 150
    return (@population * 0.2).floor if @population_density >= 100
    return (@population * 0.1).floor if @population_density >= 50
    return (@population * 0.05).floor if @population_density < 50

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # sets up calculation for speed of spread
  # sets variable of speed = 0.0, adds speed (in months) based on population density
  # prints second half of sentence to terminal saying how many months it will take to spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    return (speed += 0.5) if @population_density >= 200
    return (speed += 1) if @population_density >= 150
    return (speed += 1.5) if @population_density >= 100
    return (speed += 2) if @population_density >= 50
    return (speed += 2.5) if @population_density < 50

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
virus_predictor_array = []

STATE_DATA.each do |state, info|
  virus_predictor_array.push(VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects)
end

virus_predictor_array

# # REFACTORED: 
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section