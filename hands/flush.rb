class Flush
  def initialize(hand)
    @hand = hand
  end

  def check_flush
    if /(.)\1{3,}/ =~ join_suit
      "Flush"
    end
  end

  def join_suit
    strip_suit.join
  end

  def strip_suit
    @hand.map do |card|
      card.sub(/^\w/, "")
    end
  end
end
