class Api::CardsController < ApplicationController
  
  respond_to :json

  def index
    respond_with Card.all
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
