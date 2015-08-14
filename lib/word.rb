class Word

  attr_reader :name, :origin, :definitions

  @@words = []

  def initialize (attributes)
    @name        = attributes.fetch :name
    @origin      = attributes.fetch :origin
    @definitions = []
  end

  def self.all
    @@words
  end

  def save
    @@words.push self 
  end
end
