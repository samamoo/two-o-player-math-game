require "./game"
require "./player"
require "./question"

player1 = Player.new("Player 1", 3)
player2 = Player.new("Player 2", 3)
game = Game.new(player1, player2)

while player1.score != 0 && player2.score != 0
#   # while neither player's score is 0
#   # generate new turn
#   # player 1 asks question
  question = Question.new
  question.generate_question
  input = gets.chomp.to_i 
  if input != question.sum
    game.turn_failed
  else
    puts "That's correct!"
  end
  game.end_turn

end

  # puts q1.generate_question
  # puts q1.get_sum
  # answer = gets.chomp.to_i
  # if answer == q1.get_sum
  #   puts "Yes! You are correct!"
  # elsif answer != q1.get_sum
  #   puts "Seriously? No!"
  #   p1Score.lose_life
  #   # p1Score.current_score 
  #   # p2Score.current_score
  #   # puts "P1: #{p1Score.current_score} vs P2: #{p2Score.current_score.to_s}"
  # end
