class Cell < Struct.new :content

  def hit
    content.hit!
  end

  def hit?
    content.hit?
  end

  def place_ship(ship)
    self.content = ship
  end

end