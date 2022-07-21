require_relative "table"
require_relative "robot"

class Client
  def initialize
    @robot = Robot.new
    @table = Table.new(5, 5)

    @robot.table = @table
  end

  def command_for(input)
    klass   = input.to_class
    params  = input.params
    command = klass.new target: @robot, params: params

    command.execute
  end
end
