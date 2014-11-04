
class Cell
  def initialize(x, y)
    raise "Invalid Coordinate" unless ("a".."z").include?(x)
    raise "Invalid Coordinate" unless (1..26).include?(y)
    @x_coordinate = x
    @y_coordinate = y
  end

  def x_axis
    @x_coordinate
  end

  def y_axis
    @y_coordinate
  end

end