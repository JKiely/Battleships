require 'player'


describe Player do

  let(:game) {double :game}
  let(:board) {double :board}
  let(:player) { Player.new(board)}
  let(:cell) {double :cell}
  let(:ship_name) {double :ship_name}

    it 'should be able to declare cell it is shooting at' do
      expect(board).to receive(:fire_at)
      player.fire_at('A', 9)
    end

    it "should be able to place ship on board" do
      expect(board).to receive(:place_ship).with(ship_name, 'A9', 'South')
      player.place_ship(ship_name, 'A9', 'South')
    end

    # it "should be able to set own name" do

    # end

    it "can view opponent board" do

    end







end



#places ships on player board




#shoot at cells