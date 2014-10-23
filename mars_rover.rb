class Rover
	attr_accessor :x
	attr_accessor :y
	attr_accessor :direction
	def initialize (x, y, direction)
		@x = x
		@y = y 
		@direction = direction
	end
	def to_s
		puts "#{@x}, #{@y}, #{@direction}"
	end
	def read_instructions(instructions)
		loop instructions.split do |instruction|

			if instruction == "M"
			move
			elsif instruction == "L"
				turn_left
			else instruction == "R"
				turn_right			
			end
		end


	end

	def move
		if direction == "N"
			new_y = y + 1
		elsif direction =="E"
			new_x = x + 1
		elsif direction == "S"
			new_y = y - 1
		else direction =="W"
			new_x = x - 1
		end
		def turn_right
			if direction == "N"
				new_direction = "E"
			elsif direction == "E"
				new_direction = "S"
			elsif direction == "S"
				new_direction = "W"
			else direction == "W"
				new_direction = "N"
			end
		ens
		def turn_left
			if direction == "N"
				new_direction = "W"
			elsif direction == "W"
				new_direction = "S"
			elsif direction == "S"
				new_direction = "E"
			else direction == "E"
				new_direction = "N"
			end

	end


end



rover = Rover.new(0,0,"N")
rover.read_instructions("MMRML")


# class ReadInstructions 
# 	attr_accessor :x
# 	attr_accessor :y
# 	attr_accessor :direction
	
# 	def initialize(x, y, direction)
# 		@x = x
# 		@y = y 
# 		@direction = direction
# 	end

# 	def plateau_size(a,b)
# 		puts "What is the size of the plateua? (please input 2 numbers with a space to separate)"
# 		plateau=gets.chomp.to_a 
		
# 	end
# 	def starting_position(c,d, directions)
# 		starting_point=gets.chomp.to_a
# 		puts "What is your starting position? (please input 2 numbers and direction letter in capitals)"
# 	end
# end

# read_instructions=ReadInstructions.new
# read_instructions.plateau_size





	# def M (x,y, direction)
	# 	new_y = @y+1
	# 	puts "New position is "
	## end