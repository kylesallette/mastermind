require 'catpix'
require 'colorize'
require "csv"
require 'pry'
require_relative 'png_art'
require_relative 'ascii_banners'
require_relative 'instructions'


class MasterMind

  attr_reader :play_game,
              :input,
              :array,
              :start_time,
              :total_time,
              :number

  def initialize
    @guesses = 0
    @matches = 0
    @input = input
    @array = array
    @start_time = start_time
    @total_time = total_time
    @number = number
    @opening_art = opening_art

  end

  def opening_art
    PngArt.wizard
  end


  def welcome_dialogue
    puts "Welcome to".center(45).red
    AsciiBanners.welcome_banner
    puts  "Would you like to (p)lay, read the (i)nstructions, or (q)uit?".red
  end


  def start_dialogue
    puts "****I have generated a beginner sequence with four elements made up of****".blue
    puts "(r)ed".red,"(g)reen".green,"(b)lue".blue,"(y)ellow".yellow
    puts "-Use (q)uit at any time to end the game.".red,"-Or (c)heat for answer!".red
    puts "What's your guess?".yellow
  end


  def start(instructions)
    welcome_dialogue
      while @input = gets.chomp.downcase
      break if @input == "quit" || @input == "q"

        if @input == "instructions" || @input == "i"
          instructions.how_to_play
        elsif @input == "play" || @input == "p"
          play_game
        elsif @input == "about"
          instructions.history
        else
          puts "Im sorry, I dont understand that command. Im just a simple game.".yellow
        end
      end
      AsciiBanners.goodbye_banner
      PngArt.wizard_2
  end


  def play_game
    start_dialogue
    @array = ["r","r","g","g","b","b","y","y"].sample(4).join

    @start_time = Time.now
      while @input = gets.chomp.downcase
      break if @input == "quit" || @input == "q"
        @guesses += 1
        if @input == @array
          right_answer
        elsif @input == "cheat" || @input == "c"
          puts "Well shame on you for cheating but the answer is (#{@array})!".red
            break
        elsif @input == "play" || @input == "p"
          play_game
        elsif @input.length > 4
          puts "Thats to many letters! Please try again".red
        elsif @input.length < 4
          puts "Thats too few letters! Please try again".red
        else
          response_after_input
        end
      end
       puts  "Are you sure you want to (q)uit? Or (p)lay again!!".red
       @guesses = 0
  end


  def right_answer
    @total_time = Time.now - @start_time
      puts "Congratulations! You guessed the sequence '#{@array}' in #{@guesses} guesses
      and #{@total_time} seconds.".red, "***Have some gold***".center(40).yellow
      PngArt.coin
      puts "Would you like to (p)lay again or (q)uit?".yellow
  end



  def response_after_input
    total_matches
    @number = @array.count(@input)
      puts "'#{@input}' has #{@number} of the correct elements with #{@matches} in the correct positions
    You've taken #{@guesses} guess".yellow
     @matches = 0
  end


  def total_matches
    if @array[0] == @input[0]
      @matches += 1
    end
    if @array[1] == @input[1]
      @matches += 1
    end
    if @array[2] == @input[2]
      @matches += 1
    end
    if @array[3] == @input[3]
      @matches += 1
    end
  end

end


instructions = Instructions.new
master = MasterMind.new
master.start(instructions)
