class Board

  def initialize(width, height)
    @width = width
    @height = height
    @size = @width * @height
    @board = @size.times.map{Cell.new(Water.new)}
  end

  def cell_count
    cell_count = @board.count
  end
end