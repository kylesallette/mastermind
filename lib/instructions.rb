require 'colorize'

class Instructions


  attr_reader :how_to_play,
              :begin_game


  def initialize
    @how_to_play
  end

  def how_to_play
    puts"The object of MASTERMIND is to guess a secret code consisting of a
    series of 4 colors. Each guess results in feedback narrowing down the
    possibilities of the code. Try and solve with the fewest guesses possible.".red
    puts "***example:rgby, gryb ***".center(50).red
    puts"Type -about- if you would like to know the history of the game.".yellow
  end

  def history
    puts  "Mastermind or Master Mind is a code-breaking board game for two players.
    The modern game with pegs was invented in 1970 by Mordecai Meirowitz,
    an Israeli postmaster and telecommunications expert.
    It resembles an earlier pencil and paper game called Bulls and Cows that
    may date back a century or more.".blue
  end

  def begin_game
    puts "****I have generated a beginner sequence with four elements made up of****".blue
    puts "(r)ed".red,"(g)reen".green,"(b)lue".blue,"(y)ellow".yellow
    puts "-Use (q)uit at any time to end the game.".red,"-Or (c)heat for answer!".red
    puts "What's your guess?".yellow
  end





end
