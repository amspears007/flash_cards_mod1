class Deck

  def initialize(cards)
    @cards = cards

  end

  def cards
    @cards
  end

  def count
    cards.count
  end

  def cards_in_category(category)
    #using each
    card_category = []
    cards.each do |card|
      card.category == category
      card_category << card if card.category == category
    end
    card_category
    #REFACTOR using select
    #cards.select do |card|
    #card.category == category
  end
end