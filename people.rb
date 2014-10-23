class Person
	attr_accessor :name
	def initializer(name)
		@name = name
	end
	def greeting
		puts "Hi, my name is #{@name}."
	end
end


class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

instructor = Instructor.new
instructor.name = "Chris"
instructor.greeting

student = Student.new
student.name = "Cristina"
student.greeting

instructor.teach
student.learn

student.teach
#This does not work because the student class does not include the teach method as it is a class method and it has inherited from Person class but not from Teacher class.


