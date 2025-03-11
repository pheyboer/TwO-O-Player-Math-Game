puts "DEBUG: main.rb loaded"
require_relative 'game'

# testing player
# player = Player.new("Test Player")
# puts player.lives == 3 ? "✅ Initial lives test passed" : "❌ Initial lives test failed"

# player.lose_life
# puts player.lives == 2 ? "✅ Lose life test passed" : "❌ Lose life test failed"

# puts player.alive? == true ? "✅ Alive test passed" : "❌ Alive test failed"

# player.lose_life
# player.lose_life
# puts player.alive? == false ? "✅ Dead test passed" : "❌ Dead test failed"

# # tesing question
# question = Question.new
# player2 = Player.new("Test Player 2")

# # Run tests
# puts question.ask_question(player2)
# puts question.correct_answer?(question.num1 + question.num2) ? "✅ Correct answer test passed" : "❌ Correct answer test failed"
# puts question.correct_answer?(999) ? "❌ Incorrect answer test failed" : "✅ Incorrect answer test passed"

puts "DEBUG: Creating new game instance"
game = Game.new


puts "DEBUG: Starting the game"
game.play