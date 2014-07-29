require './straight.rb'
require './flush.rb'

class StraightFlush
  def initialize(hand)
    @hand = hand
  end

  def check_straight_flush
    if check_flush && check_straight
      "Straight Flush"
    end
  end

  def check_flush
    flush = Flush.new(@hand)
    flush.check_flush.!empty?
  end

  def check_straight

  end
end
