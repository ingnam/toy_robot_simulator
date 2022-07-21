class Table
  def initialize(length, width)
    @columns = 0...length
    @rows    = 0...width
  end

  def valid_move?(position)
    @columns.cover?(position.x_coord) && @rows.cover?(position.y_coord)
  end
end
