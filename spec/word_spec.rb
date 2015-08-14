require 'rspec'
require 'definition'
require 'word'

describe Word do

  describe '#name' do
    it 'should return the name of the word' do
      word = Word.new({name: 'word'})
      expect(word.name).to eq 'word'
    end
  end
end



# Definition

# Word
 # part of speach
 # name
 # definitions
