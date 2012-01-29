class Board

	def initialize
		@rows = 3
		@columns= 3
		@board = Array.new(@rows){Array.new(@columns)}
	end

	def length
		@board.length
	end
	
	def markX x,y
		@board[x][y] = "X"
	end

	def markO x,y
		@board[x][y] = "O"
	end

	def check x,y
		@board[x][y]
	end

	def status
		if matchOver?
			return "#{@player} won the match."
		else
			return "No result yet."
		end
	end		 

	def matchOver?
		@rows.times do |i|
			@columns.times do |j|
				if( (((@board[i][j] == @board[i][j+1]) && ( @board[i][j+1] == @board[i][j+2])) || ((@board[i][j] == @board[i+1][j+1]) && ( @board[i+1][j+1] == @board[i+2][j+2])) || ((@board[i][j] == @board[i+1][j]) && ( @board[i+1][j] == @board[i+2][j]))) && (@board[i][j] == 
					"X" || @board[i][j] == "O") )
					@player = @board[i][j]
					return true
				end
			end
		end
		return false
	end

	def display
		a = Array.new
		1.upto 3 do |i|
			1.upto 3 do |j|
				a.insert(@board[i][j])
			end
		end
		return a
	end
end