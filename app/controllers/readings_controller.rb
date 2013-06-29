class ReadingsController < ApplicationController

	def index
		if params[:tag]
			@readings = Reading.order("weight ASC").tagged_with(params[:tag], :on => :reading_tags ).page(params[:page]).per(9)
		else
			@readings = Reading.limit(10).order("weight ASC").page(params[:page]).per(9)
		end
		render layout: 'full'
	end

	def show
		@readings = Reading.limit(10).order("weight ASC").page(params[:page]).per(9)
		@reading = Reading.find(params[:id])
		render layout: 'full'
	end

end