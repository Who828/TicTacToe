require 'player'

describe Player do
	
	let(:game) { Game.new(3) }
	let(:player) { Player.new(game,"X") }

	it "checks the initialization" do
		player.symbol.should == "X"
	end

	it "plays a square" do
		player.play(0,1)
		game.board.marked?(0,1).should be_true
	end
end