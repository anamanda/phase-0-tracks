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
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # sets up calculation for number of deaths based on population density
  # multiply population by a certain decimal based on population density
  # prints first half of sentence to terminal saying state will lose (number of deaths, calculated in method)
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # sets up calculation for speed of spread
  # sets variable of speed = 0.0, adds speed (in months) based on population density
  # prints second half of sentence to terminal saying how many months it will take to spread
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

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