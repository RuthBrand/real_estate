require './lib/room'

class House

  attr_reader :address,
              :rooms,
              :specific_rooms

  def initialize(cost, address)
    @cost = cost
    @address = address
    @rooms = []
    @specific_rooms = []
  end

  def price
    @cost.reverse.chop.reverse.to_i
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(specific_room)
    @rooms.find_all { |room| room == specific_room }
  end

  def area
     @rooms[0].area + @rooms[1].area + @rooms[2].area + @rooms[3].area
  end

  # def price_per_square_foot
  #   price / area
  # end

end
