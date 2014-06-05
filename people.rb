class Person
	attr_reader :name
	def initialize (attrs = {})
		@name = attrs[:name]
	end
	def greet
		"Hi, my name is #{@name}!"
	end
end

class Student < Person
	def learn
		"I get it!"
	end
end

Class Instructor < Person
	def teach
		"Everything in ruby is an object."
	end
end

[intructor, student].each { |person| person.greet }

instructor.teach()
student.teach() 