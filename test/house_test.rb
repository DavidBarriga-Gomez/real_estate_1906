require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def test_if_it_exists
    assert_instance_of House, @house
  end

  def test_if_it_has_price
    assert_equal "$400000", @house.price
  end

  def test_if_it_has_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_if_house_add_rooms
    @house.add_rooms(@room_1)
    @house.add_rooms(@room_2)
    assert_equal [@room_1, @room_2], @house.rooms
  end

  def test_rooms_from_category
    @house.add_rooms(@room_1)
    @house.add_rooms(@room_2)
    @house.add_rooms(@room_3)
    @house.add_rooms(@room_4)
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
  end

  def test_area_of_entire_house
    @house.area(@room_1)
    @house.area(@room_2)
    @house.area(@room_3)
    @house.area(@room_4)
    assert_equal 1900, @house.area_of_house
  end
  end
