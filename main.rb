require "./game"
require "./player"
require "./question"

player1 = Player.new("Player 1", 3)
player2 = Player.new("Player 2", 3)
game = Game.new(player1, player2)

while game_not_over
  player1.score != 0 && player2.score != 0
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



# game = Game.new()
# game.start
# # starts game, generates players, runs loop

# game.after_end 
# # print out statistics