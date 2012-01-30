class Board

	def initialize size
		@board = Array.new(size) { Array.new(size) }
	end

	def length
		@board.length
	end

	def mark symbol,x,y
		@board[x][y] = symbol
	end

	def isMarked? x,y
		if(!@board[x][y].empty?)
			true
		else
			false
		end
	end

	def horizontal 
		@board.length.times do |i|
			@board.length.times do |j|
				if((((@board[i][j] == @board[i+1][j]) && ( @board[i+1][j] == @board[i+2][j]))) && !@board[i][j].empty?)
					@winner = @board[i][j]
					return true
				else
					return false
				end
			end
		end
	end

	def diagonal
	end

	def vertical
		@board.length.times do |i|
			@board.length.times do |j|
				if((((@board[i][j] == @board[i][j+1]) && ( @board[i][j+1] == @board[i][j+2]))) && !@board[i][j].empty?)
					@winner = @board[i][j]
					return true
				else
					return false
				end
			end
		end
	end

	def winner
		@winner
	end
end