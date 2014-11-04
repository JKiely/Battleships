class Cell

  def initialize(content)
    @content = content
  end

  def content
    @content
  end

  def hit
    @content.hit!
  end

  def hit?
    @content.hit?
  end

end