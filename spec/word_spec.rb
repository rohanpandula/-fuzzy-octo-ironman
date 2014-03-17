require_relative '../lib/word.rb'

describe Words do

  let(:string) {Words.new("The quick brown fox jumps over the was lazy dog, dog in the air?")}

  it 'takes one argument' do
    expect(string.str).to eq("The quick brown fox jumps over the was lazy dog, dog in the air?")
  end

  it 'counts number of each word' do
    expect(string.word_freq["was"]).to eq(1)
  end

  it 'counts number of each letter' do
    expect(string.char_freq["e"]).to eq(4)
  end

  it 'counts number of each symbol' do
    expect(string.count_number_of_symbol["?"]).to eq(1)
  end

  it 'displays top three words used' do
    expect(string.top_three_words).to eq([["the", 2], ["dog", 2], ["air", 1]])
  end

  it 'displays top three letters used' do
    expect(string.top_three_letters).to eq([["o", 5], ["e", 4], ["h", 3]])
  end

  it 'displays number of words used only once' do
    expect(string.num_word_once).to eq(10)
  end

  it 'displays all letters not used in string' do
    expect(string.letter_not_used).to eq([])
  end

end