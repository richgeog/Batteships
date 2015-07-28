require_relative 'ship'

class Board
	attr_reader :hit

	def initialize
		@co_ordinates = []
		@hit = []
	end

	def place ship
		@co_ordinates << ship.boat
	end

	def show_board
		@co_ordinates
	end

	def shoot aim
		if @co_ordinates.include?(aim)
			@hit << @co_ordinates.delete(aim)
			"Hit!"
		else
			"Miss!"
		end
	end

	def sunk
		if @co_ordinates.empty?
			"Sunk"
		end
	end

	def winner
		if @co_ordinates.empty?
			'You\'re the winner!'
		end
	end

end
