class Clock
	attr_reader :hour, :minute
	attr_accessor :total_minutes

	def self.at(hour, minute = 0)
		new(hour, minute)
	end

	def initialize(hour, minute)
		@hour = hour
		@minute = minute
		@total_minutes = (hour * 60) + minute
	end

	def +(minutes)
		@total_minutes = total_minutes + minutes
		Clock.new(hour, total_minutes)			
	end

	def to_s
		hour < 10 ? hours = "0#{hour}" : hours = "#{hour}"
		minute < 10 ? minutes = "0#{minute}" : minutes = "#{minute}"
		"#{hours}:#{minutes}"
		correct_time
	end

private

	def correct_time
		hours = total_minutes / 60
		minutes = 00
		"#{hours}:#{minutes}"
	end







end
