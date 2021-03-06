class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
    puts game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
      puts round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      system "clear"
      print color
      sleep(0.5)
      system "clear"
      sleep(0.5)
    end
    system "clear"
  end

  def require_sequence
    puts "First letter of each color in sequence, then enter:"
    @seq.each do |color|
      input = gets.chomp
      if color[0] != input
        @game_over = true
        break
      end
    end
    system "clear"
  end

  def add_random_color
    seq << COLORS.shuffle.first
  end

  def round_success_message
    "Correct!"
  end

  def game_over_message
    "Game Over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
