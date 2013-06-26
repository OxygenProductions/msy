class CardsController < ApplicationController
  
  respond_to :html, :json
  
  def index
  	if !params[:card_filter].nil?
  		@options = params[:card_filter][:options] unless params[:card_filter][:options].nil?
	  	@author = params[:card_filter][:author] unless params[:card_filter][:author].nil?
	  	@search = params[:card_filter][:search] unless params[:card_filter][:search].nil?
  	end  	
  	@cards = Card.limit(10).filter_by_params(params).page(params[:page]).per(9)
  	
  	respond_to do |format|  
		  format.html {render}
		  format.json  {render :json => Card.all}
		end
  end

  def show
    respond_with Card.find(params[:id])
  end

  def new
    respond_with Card.new()
  end

  def create
    respond_with Card.create(params[:card])
  end

  def edit
    respond_with Card.find(params[:id])
  end

  def update
    respond_with Card.find(params[:id]).update_attributes(params[:card])
  end

  def destroy
    respond_with Card.destroy(params[:id])
  end
  
  private
  
  def default_serializer_options
    {
      root: params[:action] == 'index' ? :cards : :card
    }
  end
  
end
