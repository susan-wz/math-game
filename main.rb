# classes: players, questions, turns, game?
# players: storing data about remaining lives
# questions: storing behaviour about the actual questions, including answers and responses. manages user i/o
# turns: records whose turn it is. initialises a question? manages current_player
# overall game? whether or not the game is over. initialise the game

require './players';
# require './questions';
require './turns';

class Game

  def initialize
    @p1 = Player.new
    @p2 = Player.new
    @current_player = @p1
  end

  def run
    if @p1.score > 0 && @p2.score > 0
      next_turn
      run
    elsif @p1.score == 0
      puts "Player 2 wins with a score of #{@p2.score}/3!"
      puts "----- GAME OVER -----"
    elsif @p2.score == 0
      puts "Player 1 wins with a score of #{@p1.score}/3!"
      puts "----- GAME OVER -----"
    end
  end

  def next_turn
    if @current_player == @p1
      @current_player = @p2
    else 
      @current_player = @p1
    end
    Turn.new(@current_player)
    puts "#{@p1.name} score: #{@p1.score}/3 vs #{@p2.name} score: #{@p2.score}/3"
  end

end

game = Game.new
game.run