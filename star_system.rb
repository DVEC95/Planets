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
    return @planets.find {|planet| planet.name == find_planet}
  end

  def get_largest_planet()
    return @planets.max_by {|planet| planet.diameter}
  end

  def get_smallest_planet()
    return @planets.min_by {|planet| planet.diameter}
  end

end
