puts "DEBUG: game.rb loaded"

# Game Logic
require_relative 'player'
require_relative 'question'
require_relative 'prompt'

class Game
  def initialize
    puts "Initializing Game..."  # Debugging statement

    # Explicitly check if Player class is available
    unless defined?(Player)
      puts "ERROR: Player class is NOT loaded!"
    end
    #  initalize players
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @cur_player = @player1

     # Debugging output
    puts "DEBUG: Player 1 -> #{@player1.inspect}"
    puts "DEBUG: Player 2 -> #{@player2.inspect}"
  end


  def play

    puts "DEBUG: Entering game loop"
    # Game Loop (while loop)
    while @player1.alive? && @player2.alive?

    # Generate question
    question = Question.new

    # ask current player a question
    answer = Prompt.ask(question.ask_question(@cur_player))

    if question.correct_answer?(answer)
      Prompt.display("You are Correct!")
    else
      @cur_player.lose_life
      Prompt.display("That is incorrect :( #{@cur_player}! You have #{@cur_player.lives} lives remaining")
    end

    # swap players
    @cur_player = @cur_player == @player1 ? @player2 : @player1
    end

  # winner announcment
    winner = @player1.alive? ? @player1 : @player2
    Prompt.display("#{winner.name} wins with #{winner.lives} lives left!")
  end
end


