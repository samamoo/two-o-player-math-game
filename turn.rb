require "./question"

class Turn 
  def new_turn
    puts "-----NEW TURN-----"
  end
end

turn1 = Turn.new
# questions generated inside of turn
# receives player as param
# has a vs is a