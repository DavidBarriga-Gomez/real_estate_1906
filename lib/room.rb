class Room
  def initialize(category, width, length)
    @category, = category
    @width = width
    @length = length
  end

  def category
    :bedroom
  end

  def area
    @width * @length
  end 
end
