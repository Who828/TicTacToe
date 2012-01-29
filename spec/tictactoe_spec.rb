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
end	

	