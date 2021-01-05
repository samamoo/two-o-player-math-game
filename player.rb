class Player
  attr_reader :name
  attr_accessor :score
  def initialize(name, score)
    @name = name
    @score = score
  end

  def lose_life
    @score = @score - 1
  end

  # def current_score
  #   puts "#{self.score}/3"
  # end
end