require 'cell'

describe "A cell" do

  it "must have an x coordinate" do
    cell = Cell.new("x", 1)
    expect(cell.x_axis).to eq "x"
  end

  it "x coordinate must be a letter" do
    expect {Cell.new(1, 1)}.to raise_error("Invalid Coordinate") 
  end

    it "must have an y coordinate" do
    cell = Cell.new("x", 1)
    expect(cell.y_axis).to eq 1
  end

  it "y coordinate must be a number" do
    expect{Cell.new("x", "y")}.to raise_error("Invalid Coordinate") 
  end
  
end