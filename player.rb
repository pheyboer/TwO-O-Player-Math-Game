class Player
  attr_reader :name, :lives

  # Initalize player with name and 3 lives
  def initialize(name)
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

