require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
  end

  def test_it_initializes_with_a_symbol
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.symbol
  end

  def test_it_initializes_with_length
    room = Room.new(:bedroom, 10, 13)
    assert_equal 10, room.length
  end

  def test_it_initiaizes_with_width
      room = Room.new(:bedroom, 10, 13)
      assert_equal 13, room.width
  end

  def test_category_of_room_returns_bedroom_attribute
      room = Room.new(:bedroom, 10, 13)
      assert_equal :bedroom, room.symbol
  end

  def test_the_area_function_calcualtes_area_correctly
      room = Room.new(:bedroom, 10, 13)
      assert_equal 130, room.area
  end

end
