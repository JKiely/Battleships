class Player

  def initialize(board)
    @board = board
  end

  def fire_at(row, colm)
    @board.fire_at(row, colm)
  end

  def place_ship(ship, coordinate, direction)
    @board.place_ship(ship, coordinate, direction)
  end

end