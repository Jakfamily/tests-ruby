require_relative '../lib/06_pig_latin'

describe "#translate" do
  it "translates a word beginning with a vowel" do
    expect(translate("apple")).to eq("appleay")
  end

  it "translates a word beginning with a consonant" do
    expect(translate("banana")).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    expect(translate("cherry")).to eq("errychay")
  end

  it "translates two words" do
    expect(translate("eat pie")).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
    expect(translate("school")).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    expect(translate("quiet")).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    expect(translate("square")).to eq("aresquay")
  end

  it "translates many words" do
    expect(translate("the quick brown fox")).to eq("ethay ickquay ownbray oxfay")
  end

  it "capitalizes the first letter of a capitalized word" do
    expect(translate("Apple")).to eq("Appleay")
  end

  it "maintains the capitalization of multiple words" do
    expect(translate("The Quick Brown Fox")).to eq("Ethay Ickquay Ownbray Oxfay")
  end

  it "maintains the punctuation of the original phrase" do
    expect(translate("Hello, world!")).to eq("Ellohay, orldway!")
  end
end
