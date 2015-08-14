require 'rspec'
require 'definition'

describe Definition do

  describe '#text' do
    it 'should return the text of the definition' do
      definition = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      expect(definition.text).to eq 'a unit of language'
    end
  end

  describe '#part_of_speech' do
    it 'should return the part of speech of the definition' do
      definition = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      expect(definition.part_of_speech).to eq 'noun'
    end
  end

  describe '#example' do
    it 'should return the example of the word being used in the definition' do
      definition = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      expect(definition.example).to eq 'The word of the day is bacon.'
    end
  end

  describe '#id' do
    it 'should return the id of the definition' do
      definition = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      expect(definition.id).to eq 1
    end
  end
end

# add created at feature

# def initialize (attributes)
#   @text           = attributes.fetch :text
#   @part_of_speech = nil
#   @example        = nil
# end
