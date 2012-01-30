require 'player'

describe Player do
	
	before(:each) do
		@game = Game.new(3)
		@player = Player.new(@game,"X")
	end

	it "should check the initialization" do
		@player.symbol.should == "X"
		@player.play(0,1)
		@game.board.isMarked?(0,1).should be_true
	end
end