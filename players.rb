class Player
  @@number_of_players = 0
  attr_reader :name

  def initialize
    @@number_of_players += 1
    @name = "Player #{@@number_of_players}"
    @score = 3
  end

  def score
    "#{name} Score: #{@score}/3"
  end

end

joe = Player.new
john = Player.new
puts joe.score
puts john.name