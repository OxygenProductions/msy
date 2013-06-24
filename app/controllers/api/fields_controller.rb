class Api::FieldsController < ApplicationController
  
  respond_to :json
  
  def index
    respond_with Field.all
  end

  def show
    respond_with Field.find(params[:id])
  end

  def new
    respond_with Field.new()
  end

  def create
    respond_with Field.create(params[:field])
  end

  def edit
    respond_with Field.find(params[:id])
  end

  def update
    respond_with Field.find(params[:id]).update_attributes(params[:field])
  end

  def destroy
    respond_with Field.destroy(params[:id])
  end  
  private
  
  def default_serializer_options
    {
      root: params[:action] == 'index' ? :fields : :field
    }
  end
  
end
