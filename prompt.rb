class Prompt
  def self.display(message)
    puts message
  end

  def self.ask(question)
    puts question
    gets.chomp
  end
end

