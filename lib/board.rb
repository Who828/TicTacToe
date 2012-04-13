class Board

	def initialize size
		@board = [[]]
	end

	def length
		@board.length
	end

	def mark symbol,x,y
		@board[x][y] = symbol
	end

	def marked? x,y
		!@board[x][y].empty?
	end

	def check_winner
		@board.length.times do |i|
			@board.length.times do |j|
				if(yield(@board, i, j))
					@winner = @board[i][j]
					return true
				else
					return false
				end
			end
		end
	end

	def horizontal 
		check_winner do |board, i, j|
			(((@board[i][j] == @board[i+1][j]) && ( @board[i+1][j] == @board[i+2][j]))) && !@board[i][j].empty?
		end
	end

	def diagonal
		check_winner do |board, i, j|
			(((@board[i][j] == @board[i+1][j+1]) && ( @board[i+1][j+1] == @board[i+2][j+2]))) && !@board[i][j].empty?
		end
	end

	def vertical
		check_winner do |board, i, j|
			(((@board[i][j] == @board[i][j+1]) && ( @board[i][j+1] == @board[i][j+2]))) && !@board[i][j].empty?
		end
	end

	def winner
		@winner
	end
end
