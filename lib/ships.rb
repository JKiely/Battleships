class Ship

	def initialize(size)
		@size = size
		@hit_points = size
	end

	def size
		@size
	end

	def hit_points
		@hit_points
	end

	def take_hit!
		@hit_points -= 1
	end

end