require 'cell'

describe Cell do

  let(:water) { double :water }
  let(:cell) { Cell.new(water) }

  it "must be able to contain water" do
    expect(cell.content).to be water
  end

  it "must be able to contain a ship as well" do
    cell = Cell.new(:ship)
    expect(cell.content).to be :ship
  end

  it "hitting the cell must hit the content" do
    expect(water).to receive(:hit!)
    cell.hit
  end

  it "has not been hit" do
    expect(water).to receive(:hit?)
    cell.hit?
  end

end