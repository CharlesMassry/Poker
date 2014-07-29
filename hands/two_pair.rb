class TwoPair
  def initialize(hand)
    @hand = hand
  end

  def check_two_pair
    if !select_pair.empty?
      "Two Pair"
    end
  end

  private

  def select_pair
    sort_cards.select.with_index do |card, index|
      if index < 5
        compare_cards(index, index + 1)
      end
    end
  end

  def compare_cards(x, y)
    if sort_cards[x] == sort_cards[y]
      true
    end
  end

  def sort_cards
    strip_suit.sort
  end

  def strip_suit
    @hand.map do |card|
      card.chop
    end
  end
end
