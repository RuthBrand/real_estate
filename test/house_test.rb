require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'
require './lib/room'
require 'pry'

class HouseTest < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_its_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_its_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_rooms_attribute_starts_as_an_empty_array
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_i_can_add_a_room_to_this_house
    room_1 = Room.new(:bedroom, 10, 13)
    house = House.new("$400000", "123 sugar lane")
    assert_equal house.rooms, house.add_room(room_1)
  end

  def test_i_can_add_more_than_one_room
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house = House.new("$400000", "123 sugar lane")
    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal 2, house.rooms.count
  end

end