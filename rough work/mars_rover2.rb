class Rover
	attr_accessor :x, :y, :direction

	def initialize (x,y,direction)
		@x = x
		@y = y
		@direciton = direction
	end	

	def read_instructions(instructions)
		instruction.split("").each do |instruction|
			if instruction == "M"
				if grid_is_available
				move
				end
			elsif instruction == "L"
				turn_left
			elsif instruction == "R"
				turn_right
			else
				puts "Instruction is not recognized!"
			end
		end
	end

	def grid_size(plateau_width, plateau_height)
		@plateau_width = plateau_width
		@plateau_height = plateau_height
	end
	def grid_is_available
		if @x + 1 <= @plateau_width && @y + 1 <= @plateau_height
		else 
			puts "You have fallen off the grid!"
		end
	end
	def move 
		
		if @direction == "N"
			@y += 1
		elsif @direction =="E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		else @direction =="W"
			@x -= 1
		end
	end
	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		else @direction == "W"
			@direction = "N"
		end
	end
	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		else @direction == "E"
			@direction = "N"
		end

	end


end

rover1 = Rover.new(0,0,"N")
puts rover1.x
puts "Rover's current position is #{rover1.x}, #{rover1.y}, #{rover1.direction}"
rover1.read_instructions("L")