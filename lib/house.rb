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

  def rooms_from_category(room)
    room = room
    if @rooms[0].symbol == room || @rooms[1].symbol == room || @rooms[2].symbol == room || @rooms[3].symbol == room
    @specific_rooms << room
    end
  end


  def area
    @rooms[0].area + @rooms[1].area + @rooms[2].area + @rooms[3].area
  end

end
