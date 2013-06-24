class Api::EnvelopesController < ApplicationController
  
<<<<<<< HEAD
=======
  respond_to :json
  
>>>>>>> theme
  def index
    respond_with Envelope.all
  end

  def show
    respond_with Envelope.find(params[:id])
  end

  def new
    respond_with Envelope.new()
  end

  def create
    respond_with Envelope.create(params[:envelope])
  end

  def edit
    respond_with Envelope.find(params[:id])
  end

  def update
    respond_with Envelope.find(params[:id]).update_attributes(params[:envelope])
  end

  def destroy
    respond_with Envelope.destroy(params[:id])
  end
  
  private
  
  def default_serializer_options
    {
      root: params[:action] == 'index' ? :envelopes : :envelope
    }
  end
  
end
