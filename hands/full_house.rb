class FullHouse
  def initialize(hand)
    @hand = hand
  end

  def check_full_house
    if compare_end_cards && compare_middle_card
      "Full House"
    end
  end

  private

  def compare_end_cards
    if compare_cards(0, 1) && compare_cards(3, 4)
      true
    end
  end

  def compare_middle_card
    if compare_cards(2, 1) || compare_cards(2, 3)
      true
    end
  end

  def compare_cards(x,y)
    if sorted_cards[x] == sorted_cards[y]
      true
    else
      false
    end
  end

  def sorted_cards
    strip_suit.sort
  end

  def strip_suit
    @hand.map do |card|
      card.sub(/\w$/, "")
    end
  end
end

puts FullHouse.new(["KH", "KS", "KD", "AS", "AH"]).check_full_house
