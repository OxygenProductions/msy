class ArtistsController < ApplicationController
  
  respond_to :html
  
  def index
  end
  
  def show
  	@artist = Author.find(params[:id])
  	@link = "/cards?&card_filter%5Boptions%5D%5B%5D=&card_filter%5Bauthor%5D=#{@artist.id}"
  end
  
end
