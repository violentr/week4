# Initialize a new player with her/his name.
# 
# You will have to create a board in there and randomize the
# positioning of your ship on the board.
class Player
	attr_reader :name, :board

	def initialize name, board
		@name = name
		@board = board
	end

	def board_has_ships_still_floating?
		true if ship_units_remaining > 0
		#assume each ship has between 1 and 4 ship units
	end

	def ship_units_remaining
		ship_units_available - ship_units_hit
	end

	def ship_units_available
		20
		#placeholder
	end

	def ship_units_hit
		19
		#placeholder
	end



end
