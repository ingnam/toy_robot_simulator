require_relative "move_command"
require_relative "left_command"
require_relative "right_command"
require_relative "place_command"
require_relative "report_command"
require_relative "invalid_command"

class Input
  def initialize(input)
    @input = input.strip.downcase
  end

  def basename
    @basename ||= @input.split(" ").first
  end

  def params
    @params ||= @input.split(" ").drop 1
  end

  def to_class
    klass = "#{basename.capitalize}Command"
    return InvalidCommand unless Object.const_defined? klass
    Object.const_get klass
  end
end
