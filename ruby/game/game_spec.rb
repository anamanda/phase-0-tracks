require_relative "game"

describe WordGame do
  let (:game) { WordGame.new("testing") }

  it 'should return as many _s as the number of letters in word' do
    expect(game.underscore).to eq ("_" * 7)
  end

  it 'should return the correct output after 1 guessed letters' do
    game.underscore
    expect(game.user2_letter("s")).to eq ("__s____")
  
end