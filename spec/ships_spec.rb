require 'ships'


describe Ship do

	let(:ship) {Ship.new(5)}
	let(:cell) {double :cell}


	it "a ship should have a set size" do
		expect(ship.size).to eq(5)
	end

	it "should have hit points equal to its length" do
		expect(ship.hit_points).to eq(ship.size)
	end

	it "should lose one hit point if hit" do
		expect(ship.hit_points).to eq(ship.size)
		expect{ship.take_hit!}.to change{ship.hit_points}.by -1
	end

end