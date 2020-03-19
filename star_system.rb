class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(find_planet)
    found_planet = @planets.find {|planet| planet.name == find_planet}
    return found_planet
  end

end
