class Api::ImagesController < ApplicationController

	respond_to :json
	
	def index
    respond_with Image.all
  end

  def show
    respond_with Image.find(params[:id])
  end

  def new
    respond_with Image.new()
  end

  def create
    respond_with Image.create(params[:image])
  end

  def edit
    respond_with Image.find(params[:id])
  end

  def update
    respond_with Image.find(params[:id]).update_attributes(params[:image])
  end

  def destroy
    respond_with Image.destroy(params[:id])
  end
	  
  private
  
  def default_serializer_options
    {
      root: params[:action] == 'index' ? :images : :image
    }
  end
  
end
