class System

  attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end


  def total_mass
    mass = 0
    @bodies.each do |body|
      mass = mass + body.mass
    end
    puts "The total mass of the system is #{mass}"
  end

  # no arguments, just show me all the planet names like this:
  # Here's a list of the planets: <planet 1 name>, <planet 2 name>
  def display_planet_names
    planets = []
    @bodies.each do |body|
      planets << body.name
    end
    puts planets
  end

end



class Body < System

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

class Planet < Body

  def initialize (name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
    end

end


class Moon < Body

  def initialize (name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
    end

end


class Star < Body

  def initialize (name, mass, type)
    super(name, mass)
    @type = type
    end

end



frank = System.new
earth = Planet.new("Earth", 23, 24, 365)
mars = Planet.new("Mars", 20, 24, 365)
saturn = Planet.new("Saturn", 55, 24, 365)
sun = Star.new("Sun", 333, "G-type")
moon = Moon.new("Moon", 7, 24, 365)
