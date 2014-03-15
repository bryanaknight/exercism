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

  this.YearsInSpace = function(planet){
    var time = this.earthYears / this.earthToOtherPlanets[planet];
    return parseFloat(time.toFixed(2))
  };

  this.onEarth = function() {
    return this.YearsInSpace('earth');
  };

  this.onMercury = function() {
    return this.YearsInSpace('mercury');
  }

  this.onJupiter = function() {
    return this.YearsInSpace('jupiter');
  };

  this.onSaturn = function() {
    return this.YearsInSpace('saturn');
  };

  this.onNeptune = function() {
    return this.YearsInSpace('neptune');
  };

  this.onUranus = function() {
    return this.YearsInSpace('uranus');
  };

  this.onMars = function() {
    return this.YearsInSpace('mars');
  };

  this.onVenus = function() {
    return this.YearsInSpace('venus');
  };

};

module.exports = SpaceAge;

