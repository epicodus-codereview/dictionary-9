class Word

  attr_reader :name, :origin, :definitions, :id

  @@words = []

  def initialize (attributes)
    @name        = attributes.fetch :name
    @origin      = attributes.fetch :origin
    @definitions = []
    @id          = @@words.length + 1
  end

  def self.all
    @@words
  end

  def save
    @@words.push self
  end

  def self.clear
    @@words = []
  end

  def self.find (identifier)
    found_word = nil
    @@words.each do |word|
      if word.id == identifier
        found_word = word
      end
    end
    found_word
  end
end
