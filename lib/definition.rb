class Definition

  attr_reader :text, :part_of_speech, :example, :id, :created_at

  @@definitions = []

  def initialize (attributes)
    @text           = attributes.fetch :text
    @part_of_speech = attributes.fetch :part_of_speech
    @example        = attributes.fetch :example
    @created_at     = Time.now.year
    @id             = @@definitions.length + 1
  end
end
