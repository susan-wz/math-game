require './questions';

class Turn
  attr_accessor :current_player

  def initialize(current_player)
    puts "----- NEW TURN -----"
    question = Question.new(current_player)
    question.ask_question
    if question.check_answer == false
      current_player.score -= 1
    end
  end

end