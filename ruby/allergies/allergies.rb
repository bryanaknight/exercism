require 'pry'
class Allergies
  attr_reader :score, :foods

  def initialize(score)
    @score = score
    @foods = {
      "eggs"         => 1,
      "peanuts"      => 2,
      "shellfish"    => 4,
      "strawberries" => 8,
      "tomatoes"     => 16,
      "chocolate"    => 32,
      "pollen"       => 64,
      "cats"         => 128
     }
  end

  def allergic_to?(allergens)
    foods[allergens] <= score
  end

  def list
    if score == 0
      []
    elsif foods.values.include?(score)
      item = foods.select do |food, points|
        points == score
      end
      item.keys
    end
    # else
    #   foods.select { |key, value| value <= score }

    # item = foods.select do |food, points|
    #   points == score 
    # end
    # item.keys
  end

end
