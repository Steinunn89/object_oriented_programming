#my_variable = "some value" #local variable - can't access inside initialize
#$my_variable = "some value" #global
class Point
	#@@my_class_variable = "You can access me from the Class level"

	#attr_reader :x, :y
	#attr_writer :x, :y
	attr_accessor :x, :y

	def initialize (x,y)
	#never have to call, .new utilizes, but usually add states, parameters optional, but then don't get to choose what we pass it
	#x = x - local variable stay in method
	#y = y - local variable stay in method
	#local = "I only live here"
	@x = x # instance variable - if call any method, lasts throughout whole object
	@y = y # can access me anywhere inside object!!
	puts $my_variable
	end

	def to_s #can call it display, but then need .display on puts
		"(#{@x}, #{@y})" 
	end

	#def x
		#@x
	#end

	#def y
		#@y
	#end

	#def x=(new_x)
		#@x=new_x
	#end

	#def y=(new_y)
		#@y=new_y
	#end
	def +(point) #can do all operators + - * / operator overload
		Point.new(@x + point.x, @y + point.y)
	end

end


class Line
	def initialize(point1, point2)
		@point1 = point1
		@point2 = point2
	end

	def to_s
		"#{@point1} == {@point2}"
	end

end

class Vector < Line #inherit from Line
	attr_accessor :direction
	def initialize(point1, point2, direction)
		#@point1 = point1
		#@point2 = point2
		super(point1, point2)
		@direction = direction
	end

	def to_s
		super + " --> #{@direction}"
	end
end

module BeingOnEarth
	def gravity

	end
	
end

class Rock
	include BeingOnEarth #multiple inheritance = modules, what mixin is, can only inherit normally between parent, one inheritance
end
class Person
	include BeingOnEarth
end

module GridSystem
	class Point
	end

	class Line
	end

	class Vector
	end
end

point =Gridsystem::Point.new
#:: to access within GridSystem, since in module can't access directly

class User
end
module Twitter
	class User
	end
end



point1 = Point.new(1,2)
point2 = Point.new(4,5)

line = Line.new(point1, point2)
vector = Vector.new(point1,point2, "N")
puts vector.class


# puts point1.x  #.display no longer needed because called it to_s
# puts point2.y
# point1.x = 4
# puts point1

# added_point = Point.new(point1.x+point2.x, point1.y+point2.y)
# added_point2 = point1 + point2


#puts point.class

#variables
#instance variables
#local variables
#global variables
#class variables