class Api::AuthorsController < ApplicationController
  
  def index
    respond_with Author.all
  end

  def show
    respond_with Author.find(params[:id])
  end

  def new
    respond_with Author.new()
  end

  def create
    respond_with Author.create(params[:author])
  end

  def edit
    respond_with Author.find(params[:id])
  end

  def update
    respond_with Author.find(params[:id]).update_attributes(params[:author])
  end

  def destroy
    respond_with Author.destroy(params[:id])
  end
  
  private
  
  def default_serializer_options
    {
      root: params[:action] == 'index' ? :authors : :author
    }
  end
  
end
