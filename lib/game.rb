class Game
  attr_reader :players, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def attack
    players.last.receive_damage
  end

  def switch_player
    last = players.shift
    @players.push(last)
    @current_player = players.first
  end

end
