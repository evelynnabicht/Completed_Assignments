# EXPLANATION OF require_relative
#
#

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


require_relative 'state_data'

class VirusPredictor

  #Called when a new instance is created and assigns the attributes their     #initial values.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Prints the number of predicted deaths and speed of spread for a chosen 
  #state
  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Prints the number of deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier =  0.4
    elsif @population_density >= 150
      multiplier =  0.3
    elsif @population_density >= 100
      multiplier =  0.2
    elsif @population_density >= 50
      multiplier =  0.1
    else
      multiplier =  0.05
    end

    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Prints the speed that a virus will spread in months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def report
  STATE_DATA.each do |state, state_info|
  state_report = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  state_report.virus_effects
end
end

report

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

# 1) The population density/population hash is INSIDE the state data hash that contains the state names

# 2) Require relative needs the path for the other file that is relative to the one currently open (and links them). require 
# includes files relative to the same directory.

# 3) frequencies.each { |key, value| puts "#{key} #{value}" }

# 4) I realized that the variables did not even need to be mentioned at all because of the particular scope of those specific variables.

# 5) I was always very confused by the whole "hash within a hash" idea, but this exercise really helped me break the concept down into something I could understand.
