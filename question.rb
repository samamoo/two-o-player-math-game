class Question
  attr_reader :sum
  
  @@first = 0
  @@second = 0
  def initialize
    @sum = @@first + @@second
  end

  def generate_question
    @@first = rand(1...20)
    @@second = rand(1...20)
    @sum = @@first + @@second
    puts "What does #{@@first} plus #{@@second} equal?"
  end

  # def get_sum
  #   @@sum
  # end
end

# q1 = Question.new
# q1.generate_question