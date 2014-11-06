require_relative 'board'

class PlayerBoard

  include Board

  def initialize
        @coordinates = []
    @cells = []
    @grid = {}
    x_axis
    y_axis
    coordinates
    make_grid
  end

end