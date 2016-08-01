require_relative "game"

describe WordGame do
  let (:game) { WordGame.new("testing") }

  it 'should return as many '_'s as the number of letters in word' do
    expect(game.underscore).to eq ("_" * 7)
  end
  
end