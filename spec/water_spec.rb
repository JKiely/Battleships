require 'water'

describe Water do

  let(:water) { Water.new }

  it "has not been hit" do
    expect(water).not_to be_hit
  end

  it "can be hit" do
    expect(water.hit!).to be_hit
  end

end