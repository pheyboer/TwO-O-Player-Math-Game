require_relative 'player' # require player
require_relative 'question' # require question

# testing player
player = Player.new("Test Player")
puts player.lives == 3 ? "✅ Initial lives test passed" : "❌ Initial lives test failed"

player.lose_life
puts player.lives == 2 ? "✅ Lose life test passed" : "❌ Lose life test failed"

puts player.alive? == true ? "✅ Alive test passed" : "❌ Alive test failed"

player.lose_life
player.lose_life
puts player.alive? == false ? "✅ Dead test passed" : "❌ Dead test failed"

# tesing question
question = Question.new
player2 = Player.new("Test Player 2")

# Run tests
puts question.ask_question(player2)
puts question.correct?(question.num1 + question.num2) ? "✅ Correct answer test passed" : "❌ Correct answer test failed"
puts question.correct?(999) ? "❌ Incorrect answer test failed" : "✅ Incorrect answer test passed"