require 'rspec'
require 'definition'
require 'word'

describe Word do

  before do
    Word.clear
  end

  describe '#name' do
    it 'should return the name of the word' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      expect(word.name).to eq 'word'
    end
  end

  describe '#origin' do
    it 'should return the origin of the word' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      expect(word.origin).to eq 'Old English'
    end
  end

  describe '#definitions' do
    it 'should return an array of the definitions of the word and be empty by default' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      expect(word.definitions).to eq []
    end
  end

  describe '.all' do
    it 'should return be empty by default' do
      expect(Word.all).to eq []
    end
  end

  describe '#save' do
    it 'should store the word to the array of saved words' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      word.save
      expect(Word.all).to eq [word]
    end
  end

  describe '.clear' do
    it 'should empty out the array of saved words' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      word.save
      Word.clear
      expect(Word.all).to eq []
    end
  end

  describe '#id' do
    it 'should return the id of the word' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      expect(word.id).to eq 1
    end
  end

  describe '.find' do
    it 'should return the word with a matching id' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      word.save
      expect(Word.find(1)).to eq word
    end
  end

  describe '#add_definition' do
    it 'should store a definition in the word\'s array of definitions' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      definition = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      word.add_definition definition
      expect(word.definitions).to eq [definition]
    end

    it 'should store multiple definitions in a single word' do
      word = Word.new({name: 'word', origin: 'Old English', definitions: []})
      first_definition  = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      second_definition = Definition.new({text: 'a way of saying cool', part_of_speech: 'interjection', example: 'Word.'})
      word.add_definition first_definition
      word.add_definition second_definition
      expect(word.definitions).to eq [first_definition, second_definition]
    end
  end
end
