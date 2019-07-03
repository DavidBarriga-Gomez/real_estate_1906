class House
  attr_reader :price, :address, :rooms, :area
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @spaces = []

  end

  def add_rooms (new_rooms)
    @rooms.push (new_rooms)
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
    room.category == category
  end
  end

  def area_of_house
    @spaces.map do |space|
      # +=
  end
  #   @room_1.area + @room_2.area + @room_3.area + @room_4.area
  # enumerable

end
