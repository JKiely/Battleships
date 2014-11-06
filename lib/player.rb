class Player

  def initialize(board)
    @board = board
  end

  def fire_at(coordinate)
    @board.fire_at(coordinate)
  end

  def place_ship(ship, coordinate, direction)
  	col = coordinate.split('')[0]
  	row = coordinate.split('')[1]
  	case direction.downcase
  	when down
  		place_down(ship, col, row)
  	when up
  		place_up(ship, col, row)
  	when left
  		place_left(ship, col, row)
  	when right
  		place_right(ship, col, row)
  	end
  end


  def place_down(ship, col, row)
  	positions = {(col + row).to_sym => ship}
  	(ship.size - 1).times do |x|
  		positions[(col.next! + row).to_sym] = ship
  	end
  	@board.place_ship(positions)
  end

  def place_right(ship, col, row)
  	positions = {(col + row).to_sym => ship}
  	(ship.size - 1).times do |x|
  		positions[(col + row.next!).to_sym] = ship
  	end
  	@board.place_ship(positions)
  end

  

end