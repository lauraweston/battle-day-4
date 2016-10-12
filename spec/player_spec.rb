require 'player'

describe Player do

  it 'should return it\'s name' do
    player = Player.new('Kyaw')
    expect(player.name).to eq 'Kyaw'
  end
end
