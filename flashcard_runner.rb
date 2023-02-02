  #require './spec/spec_helper'
require './lib/card'
require './lib/turn'
require './lib/deck'
require'./lib/round'
require 'rspec'



    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    card_4 = Card.new("What is the largest Great Lake?", "Superior", :Geography)
    card_5 = Card.new("What animal is Indiana Jones afraid of in the movies?", "Snakes", :Movies)
    card_6 = Card.new("What comedian makes a zombie cameo in Zombieland?", "Bill Murray", :Movies)

    deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6])
    round = Round.new(deck)
    
    puts "Welcome! You're playing with #{deck.cards.count} cards."
    puts "-------------------------------------------------------"
  
  


