require 'sinatra'
require './lib/word.rb'
require './lib/definition.rb'
require './scripts/populate_dictionary.rb'

get '/' do
	@words = Word.all
	erb :index
end

get '/populate_my_dictionary' do
	populate
	redirect '/'
end

post '/word/new' do
	name   = params.fetch 'name'
	origin = params.fetch 'origin'
	@word  = Word.new({ name: name, origin: origin })
	@word.save
	erb :word
end

get '/word/:id' do
	@word = Word.find(params.fetch('id').to_i)
	erb :word
end

post '/definition' do
	@word          = Word.find(params.fetch('id').to_i)
	text           = params.fetch 'text'
	part_of_speech = params.fetch 'part_of_speech'
	example        = params.fetch 'example'
	@definition    = Definition.new({ text: text, part_of_speech: part_of_speech, example: example})
	@word.add_definition @definition
	erb :word
end

get '/*' do
	@message = 'Looks like you mispelled something. But we got your back!'
	@words   = Word.all
	erb :index
end
