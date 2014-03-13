class SpaceAge
  attr_reader :seconds, :planet_orbits

  def initialize(seconds)
    @seconds = seconds
  end

  def earth_orbit
    31557600.0
  end

  planet_orbits = 
      {
      "earth" => 1,
      "mercury" => 0.2408467,
      "venus" => 0.61519726,
      "mars" => 1.8808158,
      "jupiter" => 11.862615, 
      "saturn" => 29.447498,
      "uranus" => 84.016846, 
      "neptune" => 164.79132
      }

  planet_orbits.each do |planet, conversion|
    define_method("on_#{planet}") do 
      (seconds/(earth_orbit*conversion)).round(2)
    end
  end

end
