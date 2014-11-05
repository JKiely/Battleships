class Cell < Struct.new :content

  def hit
    content.hit!
  end

  def hit?
    content.hit?
  end

end