class Person
	attr_accessor :name
	def initializer(name)
		@name = name
	end
	def greeting
		"Hi my name is #{@name}."
	end
end


class Student < People
	def learn
		puts "I get it!"
	end
end

class Instructor < People
	def teach
		puts "Everything in Ruby is an Object"
	end
end