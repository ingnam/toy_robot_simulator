require_relative "command"

class RightCommand < Command
  def issue_command
    @target.right
  end
end
