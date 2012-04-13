class Game_Init
  
  def initialize
    @game = Game.new(3)
    @player_x = Player.new(@game,"X")
    @player_y = Player.new(@game,"Y")
  end

  def player_x
    @player_x
  end

  def player_y
    @player_y
  end

  def game
    @game
  end
end
