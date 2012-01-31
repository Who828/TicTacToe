require 'game'
require 'player'

describe Game do
	let(:game) { Game.new(3) }
	let(:player) { Player.new(game, "X")}

	it "initalizes the size" do
		Game.new(4).board.length.should == 4
	end

	it "announces the result" do
		player.play(0,0)
		player.play(0,1)
		player.play(0,2)
		game.status.should == "#{player.symbol} won the match."
	end	
end