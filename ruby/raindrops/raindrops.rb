class Raindrops

  def self.convert(number)
    if number == 1
      "1"
    else
      divisible_by_three?(number) || 
      divisible_by_five?(number) || 
      divisible_by_seven?(number)
    end
  end

  def self.divisible_by_three?(number)
    if number % 3 == 0 
      "Pling"
    end
  end

  def self.divisible_by_five?(number)
    if number % 5 == 0
      result = number.to_f / 5.0
      if result % 1 == 0.0
        "Plang"
      end
    end
    # if number % 5 == 0
    #   "Plang"
    # end
  end

  def next_prime_factor(number)
    if number % 3 == 0
      


  end

  def self.divisible_by_seven?(number)
    if number % 7 == 0
      "Plong"
    end
  end

end
