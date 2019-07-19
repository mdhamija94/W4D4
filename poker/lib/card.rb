class Card
  SUITS = [:spades, :clubs, :hearts, :diamonds]

  VALUES = {
    :ace => 14,
    :two => 2,
    :three => 3,
    :four => 4,
    :five => 5,
    :six => 6,
    :seven => 7,
    :eight => 8,
    :nine => 9,
    :ten => 10,
    :jack => 11,
    :queen => 12,
    :king => 13
  }

  def self.suits
    SUITS
  end

  def self.values 
    VALUES.keys
  end

  def initialize(suit, value)
    unless SUITS.include?(suit) && VALUES.include?(value)
      raise "That is not valid input"
    end
    @suit, @value = suit, value
  end

  attr_reader :suit, :value

  #compare_suit
  def same_suit?(other_card)
    self.suit == other_card.suit
  end

  # ==
  def same_value?(other_card)
    self.value == other_card.value
  end

  def inspect
    "#{@value} of #{@suit}"
  end

  # 

  #<Card29481284390, @suit = :spades, @value = {:ace => 14}>
end