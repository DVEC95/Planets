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

  def get_planets_with_no_moons()
    return @planets.select {|planet| planet.number_of_moons == 0}
  end

  # def get_planets_with_more_moons(moons_number)
  #   @planets.map {|planet| planet.number_of_moons > moons_number}
  # end
  #
  # def get_number_of_planets_closer_than(distance)
  #   return @planets.select {|planet| planet.distance_from_sun > distance}
  # end

  def get_total_number_of_moons()
    moons = @planets.map {|planet| planet.number_of_moons}
    return moons.reduce {|moon, sum| moon + sum}
  end

end
