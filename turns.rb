class Turn
  attr_accessor :start, :player

  def initialize(player)
    self.player = player
    question = Question.new(player)
    puts "----- NEW TURN -----"
  end

end

turn = Turn.new("player")