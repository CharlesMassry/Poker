require './deck.rb'

class Hand
  attr_reader :deck, :hand
  def initialize(deck)
    @deck = deck.deck
    @hand = []
  end

  def draw
    @hand = 5.times.map do
      @deck.pop
    end
  end
end
