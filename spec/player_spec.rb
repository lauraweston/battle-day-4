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
    damage = rand(1..10)
    expect(player_1).to receive(:receive_damage).with(damage).and_return(60 - damage)
    player_1.receive_damage(damage)
  end
end
