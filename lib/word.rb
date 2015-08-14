class Word

  attr_reader :name, :origin, :definitions

  define_method(:initialize) do |attributes|
    @name        = attributes.fetch :name
    @origin      = attributes.fetch :origin
    @definitions = []
  end
end
