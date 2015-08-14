require 'sinatra'
require './lib/word.rb'
require './lib/definition.rb'

get '/' do
	@words = Word.all
	erb :index
end

post '/word/new' do

	redirect '/'
end
