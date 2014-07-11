class Series
	attr_reader :number_string
	
	def initialize(number_string)
		@number_string = number_string
	end

	def slices(number)
		numbers = number_string.split("").collect { |s| s.to_i }
		numbers.each_slice(number).map { |chunk| chunk }
	end
end
