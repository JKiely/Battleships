require 'board'

describe Board do

  it "must contain 100 cells" do
    board = Board.new(10,10)
    expect(@board.count).to eq 100
  end

end