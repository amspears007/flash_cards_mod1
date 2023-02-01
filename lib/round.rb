class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    deck.cards[0]
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    deck.cards.shift
    new_turn
  end

  def number_correct
    correct = []
    turns.each do |turn|
      correct << turn if turn.correct? == true
    end
    correct.count
  end

  def number_correct_by_category(category)
    
  end
end