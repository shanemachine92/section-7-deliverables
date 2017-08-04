class Array
  def pretty
    self.collect(&:to_s)
  end
end

class Card
  attr_accessor :value, :suit

  def initialize (value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{@value} of #{@suit}"
  end
end

class Deck < Array
  attr_accessor :card
  SUITS = %w[Spades Hearts Diamonds Clubs]
  VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A]

  def initialize 
    SUITS.each do |suit|
      VALUES.each do |value|
        self << Card.new(value, suit)
      end
    end
  end

  def show
    self.sorted.pretty
  end

  def shuffled
    self.shuffle.pretty
  end

  def sorted
    (self.sort_by { |card| [card.suit] }).pretty
  end
end

deck = Deck.new
