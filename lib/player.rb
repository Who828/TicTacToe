require 'game'

class Player

	def initialize game, symbol
		@game = game
		@sym = symbol
	end

	def symbol
		@sym
	end

	def play x,y
		@game.move @sym,x,y
	end
end