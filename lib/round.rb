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
    correct_by_cat = []
    turns.each do |turn|
    correct_by_cat << turn if turn.correct? == true && turn.card.category == category
    end
    correct_by_cat.count
  end

  def percent_correct
    number_correct.to_f/turns.count.to_f * 100.0
  end

  def percent_correct_by_category(category)
    # require 'pry'; binding.pry
    number_correct_by_category(category).to_f/number_correct.to_f * 100.0
  end
end