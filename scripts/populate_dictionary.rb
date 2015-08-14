require './lib/definition'
require './lib/word'
require 'faker'

def populate
  100.times do |n|
    @fake_word = Word.new(name: Faker::Lorem.word, origin: Faker::Address.country)
    @fake_word.save

    3.times do |n|
      get_part_of_speech
      definition = Definition.new({text: Faker::Lorem.paragraph, part_of_speech: @fake_part_of_speech, example: Faker::Lorem.paragraph(5) })
      @fake_word.add_definition definition
    end
  end
end

def get_part_of_speech
  @fake_part_of_speech = %w[noun adjective verb adverb].sample
end
