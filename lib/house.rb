class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []

  end

  def add_rooms (new_rooms)
    @rooms.push (new_rooms)
  end

  def rooms_from_category(category)
    @rooms.find_all |room|
    room.category == category
  end
end
