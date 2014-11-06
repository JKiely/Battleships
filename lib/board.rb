require_relative './cell.rb'
require_relative './water.rb'

module Board

  def initialize
    @coordinates = []
    @cells = []
    @grid = {}
    x_axis
    y_axis
    coordinates
    make_grid
  end

  def x_axis
    @x_axis = ('a'..'j').to_a
  end

  def y_axis
    @y_axis = (1..10).to_a
  end

  def coordinates
    @coordinates = x_axis.map { |x| y_axis.map { |y| "#{x}#{y}".to_sym }}
  end

  def make_grid
    @grid = Hash[@coordinates.flatten.map {|coordinate, cell| [coordinate, Cell.new(Water.new)]}]
  end

  def grid
    @grid
  end

  def rows
    @rows = grid.each_slice(10).map{|e| e}
  end

  def columns
    @columns = @rows.transpose
  end

  def place_ship(hash)
    hash.each do |coordinate, ship| 
      # grid.each{ |cell| cell[1].place_ship(ship) if cell[0] == coordinate }
      grid[coordinate].content = ship
    end
  end

  def place(ship_type, at_coordinate)
    at_coordinate = at_coordinate.to_s
    (ship_type.size).times do 
      grid[at_coordinate.to_sym].content = ship_type
      at_coordinate.next!
    end
  end

end