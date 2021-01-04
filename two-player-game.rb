
class Score
  attr_accessor :score # get and set score
  
  def initialize(score)
    @score = score
  end
  def lose_life
    self.score = self.score - 1
  end
  def current_score
    print "#{self.score}/3"
  end
end

class Player
  def initialize(name)
    @name = name
  end
end

class Game
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
p player1

# p1 = Score.new(3)
# puts p1.score
# p1.lose_life
# puts p1.score
# puts p1.current_score