require_relative 'ship'

class Board
	attr_reader :hit

	def initialize
		@co_ordinates = []
		@hits = []
	end

	def place ship
		@co_ordinates << ship.boat
	end

	def show_board
		@co_ordinates
	end

	def shoot aim
		if @co_ordinates.include?(aim)
			@hits << @co_ordinates.delete(aim)
			return "Hit!"
		else
			return "Miss!"
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
