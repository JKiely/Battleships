class Water

 def initialize 
  @hit = false
 end

 def hit?
  @hit
 end

 def hit!
  @hit = true
  self
 end

end