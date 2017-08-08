require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new([]) }
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      4.times { cup << :stone unless [6, 13].include?(idx) }
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless (0..12).cover?(start_pos)
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    idx = start_pos
    until stones.empty?
      idx += 1
      idx = 0 if idx > 13
      case idx
      when 6
        @cups[idx] << stones.shift unless current_player_name == @name2
      when 13
        @cups[idx] << stones.shift unless current_player_name == @name1
      else
        @cups[idx] << stones.shift
      end
    end
    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    if [6, 13].include?(ending_cup_idx)
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:none?) || @cups[7..12].all?(&:none?)
  end

  def winner
    return :draw if @cups[6].count == @cups[13].count
    @cups[6].count > @cups[13].count ? @name1 : @name2
  end
end

if __FILE__ == $PROGRAM_NAME

  b = Board.new("alex", "sam")
  b.make_move(12, "alex")
  # b.cups[1] << :stone
end
