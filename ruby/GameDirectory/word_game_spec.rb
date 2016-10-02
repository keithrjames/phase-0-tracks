
require_relative 'word_game'

describe WordGame do
  let(:game) { WordGame.new("apple") }

  it "stores the secret word the user is attempting to guess" do
    expect(game.get_word).to eq "_____"
  end

  it "adds a correctly guessed letter(s) to the secret word" do
    game.guess_letter("a")
    expect(game.get_word).to eq "a____"
  end

  it "keeps track of the guesses left" do
    game.guess_letter("p")
    expect(game.guess_counter).to eq 1
  end

end