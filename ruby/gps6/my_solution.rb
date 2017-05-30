# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

# creates a path to ruby files where pertinent information is stored
# relative to it's current directory
# require: looks to a default path to find specified files
# if the default path doesn't return expected files, it assumes you
# gave it a absolute path and looks there.
require_relative 'state_data'

class VirusPredictor

  # any new instance of VirusPredictor will require and be instantiated with these parameters
  # these variables will be accessable within the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # encapsulates predicted_deaths and speed_of_spread and calls them
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # depending on population density the number of deaths is
  # calculated based on a formula
  # the information is summarized in a printed statement
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = case @population_density
    when @population_density >= 200 then (@population * 0.4).floor
    when @population_density >= 150 then (@population * 0.3).floor
    when @population_density >= 100 then (@population * 0.2).floor
    when @population_density >= 50 then (@population * 0.1).floor
    else (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculates spread of disease based on population density and a speed variables
  # method summarizes information at the end
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed = case @population_density
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, stats|
  # create new virus predictor object
  # we chose to create this report outside of the class with an each loop
  state_name = VirusPredictor.new(state_name, stats[:population_density], stats[:population])
  state_name.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section