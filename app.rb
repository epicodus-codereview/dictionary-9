require 'sinatra'
require './lib/word.rb'
require './lib/definition.rb'

get '/' do
	@words = Word.all
	erb :index
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
