require './lib/definition'
require './lib/word'
require 'faker'

def populate
  puts Faker::Name.name
end
