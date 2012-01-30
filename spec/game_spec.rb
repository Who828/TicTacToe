require 'game'
require 'player'

describe Game do
	
	before(:each) do
		@game = Game.new(3)
	    @player = Player.new(@game,"X")
	end

	it "should initalize the size" do
		@game.board.length.should == 3
	end

	it "should announce the result" do
		@player.play(0,0)
		@player.play(0,1)
		@player.play(0,2)
		@game.status.should == "#{@player.symbol} won the match."
	end
end