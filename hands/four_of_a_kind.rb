class FourOfAKind
  def initialize(hand)
    @hand = hand
  end

  def check_four_of_a_kind
    if /(.)\1{3,}/ =~ join_numbers
      "Four of a Kind"
    end
  end

  def join_numbers
    strip_numbers.sort.join
  end

  def strip_numbers
    @hand.map do |card|
      card.chop
    end
  end
end
