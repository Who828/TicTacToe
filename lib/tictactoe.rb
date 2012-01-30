class Board

	def initialize
		@rows = 3
		@columns= 3
		@board = Array.new(@rows){Array.new(@columns)}
	end

	def length
		@board.length
	end

	def valid? x,y
		if ( x < 3 && y < 3)
			true
		else
			false
		end
	end

	def markX x,y
		if valid? x,y
			@board[x][y] = "X"
		else
			return "Not valid input."
		end
	end

	def markO x,y
		if valid? x,y
			@board[x][y] = "O"
		else
			return "Not valid input."
		end
	end

	def check x,y
		if valid? x,y
			@board[x][y]
		else
			return "Not valid input."
		end
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
		@rows.times do |i|
			puts
			@columns.times do |j|
				print "#{@board[j][i]}\t"
			end
		end
	end
end