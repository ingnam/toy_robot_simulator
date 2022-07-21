require_relative "position"
require_relative "null_position"
require_relative "table"
require_relative "null_table"

class Robot
  attr_accessor :table
  attr_reader :position

  def initialize(position: NullPosition.new, table: NullTable.new)
    @position = position
    @table    = table

  end

  def place(position)
    safely_go_to position
  end

  def move
    safely_go_to @position.advance
  end

  def left
    safely_go_to @position.left
  end

  def right
    safely_go_to @position.right
  end

  def report
    puts @position.to_s
  end

  private

  def safely_go_to(position)
    return unless @table.valid_move? position
    @position = position
  end
end
