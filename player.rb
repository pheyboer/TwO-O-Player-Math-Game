puts "DEBUG: player.rb loaded"

class Player
  attr_reader :name, :lives

  # Initalize player with name and 3 lives
  def initialize(name)
    puts "DEBUG: Creating Player #{name}"  # Debugging
    @name = name
    @lives = 3
  end

  # decrease life count by 1 if answer is incorrect
  def lose_life
    @lives -= 1
  end

  def alive?
    @lives > 0
  end
end

# testing
# player = Player.new("Test Player")
# puts player.lives == 3 ? "✅ Initial lives test passed" : "❌ Initial lives test failed"

# player.lose_life
# puts player.lives == 2 ? "✅ Lose life test passed" : "❌ Lose life test failed"

# puts player.alive? == true ? "✅ Alive test passed" : "❌ Alive test failed"

# player.lose_life
# player.lose_life
# puts player.alive? == false ? "✅ Dead test passed" : "❌ Dead test failed"