require 'game'

describe Game do

  subject(:game) { described_class.new("Kyaw", "Laura") }

  it 'has two players' do
    expect(game).to have_attributes(player_1: "Kyaw", player_2: "Laura")
  end
  #
  # it 'allows player to attack another player' do
  #   expect(player_2).to receive(:receive_damage)
  #   player_1.attack(player_2)
  # end
end
