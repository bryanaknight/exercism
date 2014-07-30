class Series
	attr_reader :slice_by, :sequence
	
	def initialize(numbers)
		@sequence = numbers.split("").collect { |s| s.to_i }
	end

	def slices(slice_by)
		@slice_by = slice_by
		if uneven?
			slice
		else
			sequence.each_slice(slice_by).map { |chunk| chunk }
		end
	end

	def uneven?
		slice_by > 1 && !sequence.length.even?
	end

	def slice
		(sequence.length - 1).times.collect do
			slice = sequence.take(slice_by)
			sequence.shift
			slice
		end
	end
	

end
