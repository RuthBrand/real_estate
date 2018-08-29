class House

  attr_reader :address,
              :rooms

  def initialize(cost, address)
    @cost = cost
    @address = address
    @rooms = []
  end

  def price
    #HAHAHA THIS IS HILARIOUS
    #jheri rigging ftw
    @cost.reverse.chop.reverse.to_i
  end

  def add_room(room)
    @rooms << room
  end

end
