require 'pry'
class Octal
	attr_reader :base_eight

	def initialize(base_eight)
		@base_eight	= base_eight
		validate
	end

	def to_decimal
		decimal = 0	
		digits = get_digits
		digits.each_with_index do |digit, index|
			decimal += 8**index * digit
		end
		decimal
	end
	
	def get_digits
		base_eight.split("").map(&:to_i).reverse
	end

	def validate
		if base_eight.split("").any? { |digit| digit > '7' }
			@base_eight = "0"
		end
	end


end
