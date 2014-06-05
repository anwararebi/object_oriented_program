Plateau = Struct.new(:x, :y)

class Rover
	BEARINGS =[:N, :E, :S, :W]
	attr_accessor :x, :y
	attr_writer :bearings

	def initialize(x, y, bearings)
		@x = x
		@y = y
		@bearings = BEARINGS.index(bearings)
	end

	def bearing
		BEARINGS [@bearings % 4]
	end

	def process_command(commands)
		commands.each_char do |command|
			if command == "L" || command == "R"
				change direction(command)

			elsif command == "M"
				move
			else
				puts "ERROR"
			end
		end
		self
	end
private

	def change_direction (turn_direction)
		@bearing += turn_direction == "R" 1 : -1
	end


	def move
		case bearing.to_sym
		when :N then @y += 1
		when :E then @x += 1
		when :S then @y -= 1
		when :W then @x -= 1
		end
	end
end
