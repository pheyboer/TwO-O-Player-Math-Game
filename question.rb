require_relative 'player' # require player

class Question
  attr_reader :num1, :num2, :ans

  # generate 2 random numbers and get sum
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @ans = @num1 + @num2
  end

  # return question string for active player
  def ask_question(player)
    "#{player.name}, what is #{num1} + #{num2}?"
  end

  # check if the answer is correct
  def correct_answer?(input)
    input.to_i == @ans
  end
end