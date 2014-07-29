class ThreeOfAKind
  def initialize(hand)
    @hand = hand
  end

  def check_three_of_a_kind
    if /(.)\1{2,}/ =~ join_numbers
      "Three of a Kind"
    end
  end

  private

  def join_numbers
    strip_numbers.sort.join
  end

  def strip_numbers
    @hand.map do |card|
      card.chop
    end
  end
end
