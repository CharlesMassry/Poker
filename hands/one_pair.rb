class OnePair
  def initialize(hand)
    @hand = hand
  end

  def check_one_pair
    if /(.)\1+/ =~ join_numbers
      "One Pair"
    end
  end

  private

  def join_numbers
    strip_suit.sort.join
  end

  def strip_suit
    @hand.map do |card|
      card.chop
    end
  end
end
