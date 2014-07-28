require './hand.rb'

class Poker
  attr_reader :player_1, :player_2, :player_3, :player_4

  def initialize(players)
    @player_1 = players[0]
    @player_2 = players[1]
    @player_3 = players[2]
    @player_4 = players[3]
  end

  def run
    deal
  end

  def deal
    4.times do |number|
      number += 1
      puts "Player #{number}"
      puts "--------"
      puts eval("player_#{number}").hand
    end
  end
end

deck = Deck.new
player_1 = Hand.new(deck)
player_1.draw
player_2 = Hand.new(player_1)
player_2.draw
player_3 = Hand.new(player_2)
player_3.draw
player_4 = Hand.new(player_3)
player_4.draw

poker = Poker.new([player_1, player_2, player_3, player_4])
poker.run
