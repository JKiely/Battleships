require 'player'


describe Player do

  let(:game) {double :game}
  let(:board) {double :board}
  let(:player) { Player.new(board)}
  let(:cell) {double :cell}
  let(:ship_name) {double :ship_name, size: 3}

    it 'should be able to declare cell it is shooting at' do
      expect(board).to receive(:fire_at)
      player.fire_at('A9')
    end

    it "should be able to place ship on board pointing south" do
      expect(board).to receive(:place_ship).with({:A1 => ship_name, :B1 => ship_name, :C1 => ship_name})
      player.place_down(ship_name, 'A', '1')
    end

    it "should be able to place ship on board pointing south" do
      expect(board).to receive(:place_ship).with({:A1 => ship_name, :A2 => ship_name, :A3 => ship_name})
      player.place_right(ship_name, 'A', '1')
    end



end

