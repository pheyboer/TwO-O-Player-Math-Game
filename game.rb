# Game Logic
require_relative 'player'
require_relative 'question'
require_relative 'prompt'

# initalize players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
cur_player = player1

# Game Loop (while loop)
while player1.alive? && player2.alive?

  # Generate question
  question = Question.new

  # ask current player a question
  answer = Prompt.ask(question.ask_question(cur_player))

  if question.correct_answer?(answer)
    Prompt.display("You are Correct!")
  else
    cur_player.lose_life
    Prompt.display("That is incorrect :( #{cur_player}! You have #{cur_player.lives} lives remaining")
  end

  # swap players
  cur_player = cur_player == player1 ? player2 : player1
end


if player1.alive?
  Prompt.display("#{player1.name} wins!")
else
  Prompt.display("#{player2.name} wins!")
end


