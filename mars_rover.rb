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
		"#{@x}, #{@y}, #{@direction}"
	end

	def read_instructions(instructions)
		instructions.split("").each do |instruction|

			if instruction == "M"
				attempt_to_move
			elsif instruction == "L"
				turn_left
			elsif instruction == "R"
				turn_right	
			else
				puts "This instruction is not recognized!"		
			end
		end
	end
	
	def grid_is_available (x, y)
		if x.between?(0,$plateau_width) && y.between?(0, $plateau_height)
		true
		else 
		false
		end
	end

	def attempt_to_move
		proposed_x = @x 
		proposed_y = @y
		if @direction == "N"
			proposed_y += 1
		elsif @direction == "E"
			proposed_x += 1
		elsif @direction == "S"
			proposed_y -= 1
		else @direction == "W"
			proposed_x -= 1
		end
		if grid_is_available(proposed_x, proposed_y)
			@x = proposed_x
			@y = proposed_y
		end

	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		else @direction == "W"
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




puts "What is the size of the plateau?"
input_grid_size=gets.chomp.split


$plateau_width = input_grid_size[0].to_i
$plateau_height = input_grid_size[1].to_i

# puts "How many rovers do you have?"
# input_number_of_rovers= gets.chomp.to_i



puts "What is your initial position?"
input_initial_position=gets.chomp.split
rover = Rover.new(input_initial_position[0].to_i, input_initial_position[1].to_i, input_initial_position[2].to_s)

puts rover
# puts "What are the instructions?"
# input_instructions = gets.chomp
# rover.read_instructions(input_instructions)
# puts rover





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