class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1)
    @sequence_length = sequence_length
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each{|el| puts el}
  end

  def require_sequence
    
  end

  def add_random_color
    rand_num =rand(COLORS.length)
    @seq << COLORS[rand_num]
  end

  def round_success_message
    puts "yay!"
  end

  def game_over_message
    puts "Game Over!"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end
