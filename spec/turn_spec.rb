require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  it 'exists and has a guess and a card' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn).to be_instance_of(Turn)
    expect(turn.guess).to eq("Juneau")
    expect(turn.card).to eq(card)
  end

  it 'checks if guess is correct and responds with the word correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn.correct?).to eq(true)
    expect(turn.feedback).to eq("Correct!")    
  end

  it 'checks if guess is incorrect and responds with word incorrect' do
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    expect(turn.guess).to eq("Saturn")
    expect(turn.correct?).to eq(false)
    expect(turn.feedback).to eq("Incorrect.")



  end
end
