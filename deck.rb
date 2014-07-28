class Deck

  def deck
    shuffle_deck
  end

  private

  def shuffle_deck
    make_special_cards.shuffle
  end

  def make_special_cards
    make_suits.map do |card|
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

  def make_suits
    stringify_cards.each_with_index.map do |card, index|
      case index / 13
      when 0
        clubify(card)
      when 1
        diamondify(card)
      when 2
        spadify(card)
      when 3
        heartify(card)
      end
    end
  end

  def clubify(card)
    card + "C"
  end

  def diamondify(card)
    card + "D"
  end

  def spadify(card)
    card + "S"
  end

  def heartify(card)
    card + "H"
  end

  def stringify_cards
    make_cards.map(&:to_s)
  end

  def make_cards
    52.times.map { |card| card % 13 }.map { |card| card + 1 }
  end
end
