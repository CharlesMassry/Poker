class Deck
  def deck
    shuffle_deck
  end

  private

  def shuffle_deck
    make_face_cards.shuffle.uniq
  end

  def make_face_cards
    card_join.map do |card|
      if /^1\D/ =~ card
        card.sub(/^1/, "A")
      elsif /10/ =~ card
        card.sub(/10/, "T")
      elsif /11/ =~ card
        card.sub(/11/, "J")
      elsif /12/ =~ card
        card.sub(/12/, "Q")
      elsif /13/ =~ card
        card.sub(/13/, "K")
      else
        card
      end
    end
  end


  def card_join
    cards_and_suits.map do |pair|
      pair.join
    end
  end

  def cards_and_suits
    make_cards.product(suits)
  end

  def suits
    ["C", "D", "S", "H"]
  end

  def stringify_cards
    make_cards.map(&:to_s)
  end

  def make_cards
    52.times.map { |card| card % 13 }.map { |card| card + 1 }
  end
end
