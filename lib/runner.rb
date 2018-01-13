require_relative 'mastermind'
require_relative 'instructions'



instructions = Instructions.new
master = MasterMind.new
master.start(instructions)
