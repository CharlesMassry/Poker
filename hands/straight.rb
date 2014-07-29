class Straight
  def initialize(hand)
    @hand = hand
  end

  def check_straight
    @hand.each do |card|
      card.chop
    end
  end
end
