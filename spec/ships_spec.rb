require 'ships'


describe Ship do

	let(:ship) {Ship.new(4)}
	let(:cell) {double :cell}


	it "a ship should have a set size" do
		expect(ship.size).to eq(4)
	end

	it "should have hit points equal to its length" do
		expect(ship.hit_points).to eq(ship.size)
	end

	it "should lose one hit point if hit" do
		expect(ship.hit_points).to eq(ship.size)
		expect{ship.take_hit!}.to change{ship.hit_points}.by -1
	end

	it "should know when it is sunk" do
		(ship.size).times { ship.take_hit! }
		expect(ship.sunk?).to be(true)
	end


end