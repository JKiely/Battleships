require 'water'

describe Water do

  it "has not been hit" do
    water = Water.new
    expect(water).not_to be_hit
  end

  it "can be hit" do
    water = Water.new
    water.hit!
    expect(water).to be_hit
  end

end