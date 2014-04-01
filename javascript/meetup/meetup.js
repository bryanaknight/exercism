var Meetup = function(month, year) {
  this.findTeenthday = function(day) {
    for (var i= 13; i < 20; i++) {
      var date = new Date(year, month, i);
      if (date.getUTCDay() === day) {
       return date;
      }
    }
	} 
  
  this.monteenth = function() {
    return this.findTeenthday(1);
  }  

  this.tuesteenth = function() {
    return this.findTeenthday(2);
  }
  
  this.wednesteenth = function() {
    return this.findTeenthday(3);
  }
	
  this.thursteenth = function() {
    return this.findTeenthday(4);
  }

  this.friteenth = function() {
    return this.findTeenthday(5);
  }

  this.saturteenth = function() {
    return this.findTeenthday(6);
  }
	
  this.sunteenth = function() {
    return this.findTeenthday(7);
  }
};
  
module.exports = Meetup;

