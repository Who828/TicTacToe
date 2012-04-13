require 'player'
require 'game_init'

describe Player do

  let(:game_init) { Game_Init.new}

  let(:player_x) { game_init.player_x }
  let(:player_y) { game_init.player_y }

  let(:game) { game_init.game }

  it "checks the initialization" do
    player_x.symbol.should == "X"
    player_y.symbol.should == "Y"
  end

  it "plays a square" do
    player_x.play(0,1)
    game.board.marked?(0,1).should be_true
  end
end
