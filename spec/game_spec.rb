require 'game'

describe Game do
  kyaw = Player.new("Kyaw")
  laura = Player.new("Laura")
  subject(:game) { described_class.new(kyaw, laura) }

  it 'has two players' do
    expect(game).to have_attributes(player_1: kyaw, player_2: laura)
  end

  it 'allows a player to attack another player' do
    expect(game.player_2).to receive(:receive_damage)
    game.player_1_attack
  end
end
