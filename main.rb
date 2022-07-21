require_relative "lib/toy_robot_simulator/client"
require_relative "lib/toy_robot_simulator/input"
require 'byebug'

client = Client.new

puts "welcome to the toy robot simulator!"

loop do
  puts "input command (EXIT to quit): "
  input = gets
  break if input =~ /^\s*exit\s+/
  client.command_for Input.new(input)
end