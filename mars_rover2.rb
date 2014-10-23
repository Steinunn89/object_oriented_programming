class Rover
	attr_reader :state

	def initialize (input, plateau)
		@plateau  = plateau
		@state ={
			:x => input.shift.to_i,
			:y => input.shift.to_i,
			:face => input.shift
		}

		@atrributes = input.join.split(/ /)
	end
	def to_s
		puts "#{@x}, #{@y}, #{@direction}"
	end
	
end

def act(action)
	case action
	when "L" then turn_left
	when "R" then turn_right
	when "M" then move_forward
end

def to_s
	"#{@state[:x]} {@state[:y]} #{@state[:face]}"
end

		
	end




rover = Rover.new(0,0,"N")
puts rover

class ReadInstructions 
	attr_accessor :x
	attr_accessor :y
	attr_accessor :direction
	
	def initialize(x, y, direction)
		@x = x
		@y = y 
		@direction = direction
	end

	def plateau_size(a,b)
		puts "What is the size of the plateua? (please input 2 numbers with a space to separate)"
		plateau=gets.chomp.to_a 
		
	end
	def starting_position(c,d, directions)
		starting_point=gets.chomp.to_a
		puts "What is your starting position? (please input 2 numbers and direction letter in capitals)"
	end
end

read_instructions=ReadInstructions.new
read_instructions.plateau_size





	# def M (x,y, direction)
	# 	new_y = @y+1
	# 	puts "New position is "
	## end