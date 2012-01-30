require 'tictactoe'

describe Board do
	
	before(:each) do
		@board = Board.new
	end

	it "should be a matrix of 3X3" do
		@board.should.class == Array
		@board.length.should == 3
	end

	it "should mark properly" do
		@board.markX(0,1)
		@board.check(0,1).should == "X"
		@board.markO(1,1)
		@board.check(1,1).should == "O"
	end

	it "should not allow invalid inputs" do
		@board.markX(3,1).should == "Not valid input."
		@board.markO(1,3).should == "Not valid input."
	end

	it "should show the status of the game" do
		@board.markX(0,0)
		@board.status.should == "No result yet."
		@board.markX(1,0)
		@board.markX(2,0)
		@board.status.should == "X won the match."
	end
end	

	