class Room
      attr_reader :length,
                  :width,
                  :symbol

  def initialize(symbol, length, width)
    @symbol = symbol
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

end
