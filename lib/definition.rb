class Definition

  attr_reader :text, :part_of_speech, :example

  def initialize (attributes)
    @text           = attributes.fetch :text
    @part_of_speech = nil
    @example        = nil
  end

end



# Definition

# Word
 # part of speach
 # name
 # definitions
