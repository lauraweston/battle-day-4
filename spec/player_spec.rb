require 'player'

describe Player do

  subject(:player_1) {described_class.new("Kyaw")}
  subject(:player_2) {described_class.new("Laura")}

  it 'should return it\'s name' do
    expect(player_1.name).to eq 'Kyaw'
  end

  it 'returns the hit points' do
    expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end

  it 'hit points should reduce by 10HP when attacked' do
    player_1.receive_damage
    expect(player_1.hit_points).to eq 90
  end
end
