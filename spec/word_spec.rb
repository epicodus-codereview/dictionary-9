require 'rspec'
require 'definition'
require 'word'

describe Word do

  describe '#name' do
    it 'should return the name of the word' do
      word = Word.new({name: 'word', origin: 'Old English'})
      expect(word.name).to eq 'word'
    end
  end

  describe '#' do
    it 'should return the origin of the word' do
      word = Word.new({name: 'word', origin: 'Old English'})
      expect(word.origin).to eq 'Old English'
    end
  end
end



# Definition
  # part of speech
  # example sentence

# Word
 # name
 # definitions
 # origin
