require_relative "command"

class LeftCommand < Command
  def issue_command
    @target.left
  end
end
