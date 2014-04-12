require 'pry'
class Queens
	attr_reader :white, :black

	def initialize(positions = {})
		@white = positions[:white] || [0,3]
		@black = positions[:black] || [7,3]
		validate
	end

	def validate
		raise ArgumentError if white == black
	end

	def to_s
		board =	8.times.collect do 
			Array.new(8, "O")
		end
		board[white.first][white.last] = "W"
		board[black.first][black.last] = "B"
		board.collect do |row|
			row.join(" ")
		end.join("\n")
	end
end

