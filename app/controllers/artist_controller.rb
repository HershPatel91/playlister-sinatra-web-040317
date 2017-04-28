class ArtistController < ApplicationController

get "/artists" do
	@artists = Artist.all
	erb :'artists/index'
end

get '/artists/:slug' do
	@artist = Artist.find(params[:slug])
	erb :'artists/show'
end



end