class Player

  def initialize(board)
    @board = board
  end

  def fire_at(row, colm)
    @board.fire_at(row, colm)

  end

end