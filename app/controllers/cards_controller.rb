class CardsController < ApplicationController
  
  respond_to :html
  
  def index
  	@options = params[:card_filter][:options] unless params[:card_filter][:options].nil?
  	@author = params[:card_filter][:author] unless params[:card_filter][:author].nil?
  	@search = params[:card_filter][:search] unless params[:card_filter][:search].nil?
  	@cards = Card.limit(10).filter_by_params(params).page(params[:page]).per(9)
  end
  
end
