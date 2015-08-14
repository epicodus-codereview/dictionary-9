require 'sinatra'
require 'sinatra/contrib'
require './lib/word.rb'
require './lib/definition.rb'

get '/' do
	@words = Word.all
	erb :index
end
