require 'cell'

describe Cell do

  it "must be able to contain water" do
    cell = Cell.new(:water)
    expect(cell.content).to be :water
  end

  it "must be able to contain a ship as well" do
    cell = Cell.new(:ship)
    expect(cell.content).to be :ship
  end

  it "hitting the cell must hit the content" do
    water = double :water
    cell = Cell.new(water)
    expect(water).to receive(:hit!)
    cell.hit
  end

  it "has not been hit" do
    water = double :water
    cell = Cell.new(water)
    expect(water).to receive(:hit?)
    cell.hit?
  end

end