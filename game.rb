class Game
  attr_accessor :current_player, :players

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_player = @players[0]
  end

  def switch_player
    if @current_player == @players[0]
      @current_player = @players[1]
      puts @current_player.name
    else 
      @current_player = @players[0]
      puts @current_player.name
    end
  end

  def turn_failed
    puts "Wrong answer! Womp Womp Womp"
    @current_player.lose_life
  end

  def current_score
    puts "#{@players[0].name} : #{@players[0].score}/3 vs #{@players[1].name} : #{@players[1].score}/3"
    if @players[0].score == 0 || @players[1].score == 0
      puts "GAME OVER"
    else
      puts "-----NEW TURN----"
    end
  end

  def end_turn
    current_score
    switch_player
  end
end