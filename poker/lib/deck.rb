require_relative 'card'

class Deck


  def self.all_cards
    deck_array = []

    Card.suits.each do |suit|
      Card.values.each do |value|
        deck_array << Card.new(suit,value)
      end
    end
    deck_array
  end

  def initialize(cards = Deck.all_cards)
    @cards = cards
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw(n)
    drawn = @cards.take(n)
    drawn
  end
end

p Card.values
p Card.suits
deck = Deck.new
p deck.shuffle!
p deck.draw(5)
