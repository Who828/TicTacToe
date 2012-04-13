require 'game'
require 'player'
require 'game_init'

describe Game do
    let(:game_init) { Game_Init.new }
	let(:game) {game_init.game}
	let(:player) {game_init.player_x}

	it "initalizes the size" do
		game.board.length.should == 3
	end

	it "announces the result" do
		player.play(0,0)
		player.play(0,1)
		player.play(0,2)
		game.status.should == "#{player.symbol} won the match."
	end	
end
