class Player
  @@number_of_players = 0
  attr_reader :name
  attr_accessor :score

  def initialize
    @@number_of_players += 1
    @name = "Player #{@@number_of_players}"
    @score = 3
  end

  # def print_score
  #   "#{@name} Score: #{@score}/3"
  # end

end