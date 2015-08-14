class Word

  attr_reader :name, :origin, :definitions

  @@words = []

  define_method(:initialize) do |attributes|
    @name        = attributes.fetch :name
    @origin      = attributes.fetch :origin
    @definitions = []
  end

  def self.all
    @@words
  end
end
