class Word

  attr_reader :name, :origin 

  define_method(:initialize) do |attributes|
    @name   = attributes.fetch :name
    @origin = attributes.fetch :origin
  end
end
