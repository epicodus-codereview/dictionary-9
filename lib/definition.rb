class Definition

  attr_reader :text, :part_of_speech, :example

  def initialize (attributes)
    @text           = attributes.fetch :text
    @part_of_speech = attributes.fetch :part_of_speech
    @example        = attributes.fetch :example
  end

end



# Definition

# Word
 # part of speach
 # name
 # definitions
