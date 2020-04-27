require 'gossip'

class ApplicationController < Sinatra::Base

	 get '/' do
	 	erb :index
	 end

	 get '/gossips/new/' do 
	 	erb :new_gossip
	 end

	 post '/gossips/new/' do
	 	Gossip.new("super_auteur", "super_gossip").save
	 	puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
	 end

end