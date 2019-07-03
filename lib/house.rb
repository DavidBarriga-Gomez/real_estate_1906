class House
  attr_reader :price, :address, :room
  def initialize(price, address)
    @price = price
    @address = address
    @room = []

  end

  def add_rooms (new_rooms)
    @room.push (new_rooms)
  end
end
