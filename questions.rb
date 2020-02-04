class Question
  attr_reader :numbers, :ask_question
  attr_accessor :player

  def initialize(current_player)
    @current_player = current_player
    @number_1 = rand(21)
    @number_2 = rand(21)
  end

  def ask_question
    puts "#{@current_player.name}: What does #{@number_1} plus #{@number_2} equal?"
  end

  def check_answer
    answer = @number_1 + @number_2
    user_response = gets.chomp.to_i

    if answer == user_response
      puts "Yes, you're correct!"
      return true
    else
      puts "No, wrong!"
      return false
    end

  end

end