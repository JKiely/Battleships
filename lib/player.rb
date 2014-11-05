class Player

  def initialize(board)
    @board = board

  end

  def fire_at(coordinate)
    @board.fire_at(coordinate)
  end

  def place_ship(ship, coordinate, direction)
    @board.place_ship(ship, coordinate, direction)
  end

end