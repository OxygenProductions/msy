class UploadController < ApplicationController

  def create
    field = Field.find(params[:field_id])
    field.image = params[:qqfile]
    if field.save
	    respond_to do |format|
	      format.json { render json: {success: true, image: field.image}.to_json }
	    end
	  end
  end
end