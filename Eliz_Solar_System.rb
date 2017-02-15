# Wave 1: create a Planet class
class Planet
  attr_reader :name, :color, :moons, :state, :diameter #reader only

  def initialize (name, color, moons, state, diameter)
    puts "\nI'm a new planet called #{name}!" # to confirm planets have been created
    @name = name
    @color = color
    @moons = moons
    @state = state
    @diameter = diameter
  end

  def display_info
    puts "#{@name} is a #{@color} planet. It has #{@moons} moons, a diameter of #{@diameter} and exists in a #{@state} state."
  end

end

jupiter = Planet.new("Jupiter", "Blue", 3, "Gaseous", 325)
venus = Planet.new("Venus", "Mauve", 2, "Water", 75)
earth = Planet.new("Earth", "Blue/Green", 1, "Solid", 125)
mars = Planet.new("Mars", "Red", 2, "Gaseous", 200)
mercury = Planet.new("Mercury", "Yellow", 1, "Gaseous", 50)

e_solar_system = []
e_solar_system << jupiter << venus << earth << mars << mercury

print "\n\nWelcome to the Solar System!"
print "\n\nWould you like to learn about a planet? Yes or No?\n\n"
interest = gets.chomp.downcase
while interest != "no"
  print "\n\nWhich planet would you like to learn about?\n\n"
  n = 1
  e_solar_system.each do |planet|
    print "\n#{n}.  #{planet.name}\n\n"
    n += 1
  end
  user_choice = gets.chomp.downcase
  print "\n#{user_choice}\n\n"
  answer_planet = nil
  case user_choice
  when "jupiter"
    answer_planet = jupiter
  when "venus"
    answer_planet = venus
  when "earth"
    answer_planet = earth
  when "mars"
    answer_planet = mars
  when "mercury"
    answer_planet = mercury
  end
  def fave_planet(planet)
    puts "\n\n#{planet.name} is a #{planet.color} planet. It has #{planet.moons} moons, a diameter of #{planet.diameter} and exists in a #{planet.state} state."
  end
  if e_solar_system.include?(answer_planet)
    puts "That's in our Solar System!"
    fave_planet(answer_planet)
  else
    print "Sorry, that's not a planet."
  end
  print "\n\nWould you like to learn about another planet?\n\n"
  interest = gets.chomp.downcase
end

print "\nOK.  We'll be here if you need us.\n\n"

# Wave 2: create a Solar System class
class SolarSystem
  attr_accessor :planets
  attr_reader :name

  def initialize
    @my_solar_system = []
  end
  
  def add_a_planet(planet)
    @my_solar_system.push(planet)
  end

  def add_list_of_planets(planet_array)
    planet_array.each do |planet|
      @my_solar_system.push(planet)
    end
  end
  
  def display_info
    @my_solar_system.each do |planet|
      puts "#{planet.name} is a #{planet.color} planet. It has #{planet.moons} moons, a diameter of #{planet.diameter} and exists in a #{planet.state} state."
    end
  end
end

second_solar_system = SolarSystem.new

second_solar_system.add_list_of_planets(e_solar_system)

puts "Solar Sytem Class Object Info:\n\n"
second_solar_system.display_info
