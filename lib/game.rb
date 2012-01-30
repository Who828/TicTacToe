require 'board'

class Game
attr_accessor :board
	
	def initialize size
		@board = Board.new(3)
	end

	def move symbol,x,y
		@board.mark symbol,x,y
	end

	def status
		if @board.horizontal || @board.diagonal || @board.vertical
			return "#{@board.winner} won the match."
		else
			return "No result yet"
		end
	end
end