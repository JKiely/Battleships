require_relative './cell.rb'
require_relative './water.rb'

class Board

  # def initialize(size)
  #   @size = size
  #   @board = @size.times.map{Cell.new(Water.new)}
  #   @rows = @board.each_slice(10).map{|e| e}
  #   @columns = @rows.transpose
  # end

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
    @coordinates = x_axis.map { |x| y_axis.map { |y| "#{x}#{y}".to_s }}
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

end