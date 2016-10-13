require 'game'

describe Game do
  player_1 = Player.new("Kyaw")
  player_2 = Player.new("Laura")
  subject(:game) { described_class.new(player_1, player_2) }

  it 'has two players' do
    expect(game).to have_attributes(players: [player_1, player_2])
  end

  it 'allows a player to attack another player' do
    expect(game.players.last).to receive(:receive_damage)
    game.attack
  end

  it 'starts with player 1 as current player' do
    expect(game.current_player).to eq player_1
  end

  it 'allows players to switch turns' do
    game.switch_player
    expect(game.current_player).to eq player_2
  end
end
