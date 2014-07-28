require './deck.rb'

class Hand
  def initialize(deck)
    @deck = deck
  end

  def draw
    5.times.map do
      @deck.pop
    end
  end
end
