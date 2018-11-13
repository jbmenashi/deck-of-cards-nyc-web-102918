class Deck
  attr_accessor :cards

  def initialize
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    cards_raw = suits.product(ranks)

    @cards = cards_raw.map do |card|
      Card.new(card[0], card[1])
    end
  end

  def choose_card
    drawn_card = self.cards.delete(self.cards.sample)
  end
end

class Card
  attr_accessor :suit, :rank

  @@all  =[]

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    self.rank + "-" + self.suit
  end
end
