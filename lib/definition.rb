class Definition

  attr_reader :text, :part_of_speech, :example, :id

  @@definitions = []

  def initialize (attributes)
    @text           = attributes.fetch :text
    @part_of_speech = attributes.fetch :part_of_speech
    @example        = attributes.fetch :example
    @id             = @@definitions.length + 1
  end

end



# Definition

# Word
 # part of speach
 # name
 # definitions
