require 'rspec'
require 'definition'

describe Definition do

  describe '#text' do
    it 'should return the text of the definition' do
      definition = Definition.new({text: 'a unit of language', part_of_speech: 'noun', example: 'The word of the day is bacon.'})
      expect(definition.text).to eq 'a unit of language'
    end
  end
end


# def initialize (attributes)
#   @text           = attributes.fetch :text
#   @part_of_speech = nil
#   @example        = nil
# end
