function SpaceAge(seconds) {
  this.seconds  = seconds;
  this.earthYears = seconds / 31557600

  this.earthToOtherPlanets = {
      earth :  1,
      mercury : 0.2408467,
      jupiter : 11.86261,
      saturn : 29.447498, 
      uranus : 84.016846,
      neptune : 164.79132,
      mars : 1.8808158,
      venus : 0.61519726
    };

  var PLANETS = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"];

  for (var i = 0; i < PLANETS.length; i++) {
    var planet = PLANETS[i];
    SpaceAge.prototype["on" + planet.toUpperCase()] = buildPlanetFunction(planet);
  };

  this.YearsInSpace = function(planet){
    var time = this.earthYears / this.earthToOtherPlanets[planet];
    return parseFloat(time.toFixed(2))
  };

  function buildPlanetFunction(planet) {
    return function() {
      return this.YearsInSpace(planet);
    };
  };


};

module.exports = SpaceAge;

