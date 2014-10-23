class Rover
	attr_accessor :x, :y, :direction

	def initialize (x,y,direction)
		@x = x
		@y = y
		@direciton = direction
	end	


end

rover = Rover.new(0,0,"N")
