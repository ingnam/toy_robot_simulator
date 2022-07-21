require_relative "command"

class InvalidCommand < Command
  def execute
    puts "Invalid command"
  end
end
