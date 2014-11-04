require 'player'


describe Player do

  let(:game) {double :game}
  let(:board) {double :board}
  let(:player) { Player.new(board)}
  let(:cell) {double :cell}

    it 'should be able to declare cell it is shooting at' do
      expect(board).to receive(:fire_at)
      player.fire_at('A', 9)
    end













end



#places ships on player board




#shoot at cells