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