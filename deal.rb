require './hand.rb'

class DealCard
attr_reader :deck
  def initialize(deck)
    @deck = deck.deck
  end

  def run
    deal
  end

  def deal
    4.times.map do
      hand = Hand.new(@deck)
      hand.draw.each do |card|
        @deck.delete(card)
      end
    end
  end
end

deck = Deck.new
game = DealCard.new(deck)
game.run
puts game.deck.count
