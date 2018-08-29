class Room
    attr_accessor  :length,
                  :width,
                  :symbol,
                  :area

  def initialize(symbol, length, width)
    @symbol = symbol
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

end
