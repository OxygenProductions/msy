class SlideshowsController < ApplicationController

	def index
		if params[:tag]
			@slideshows = Slideshow.order("weight ASC").tagged_with(params[:tag], :on => :slideshow_tags ).page(params[:page]).per(9)
		else
			@slideshows = Slideshow.limit(10).order("weight ASC").page(params[:page]).per(9)
		end
		render layout: 'full'
	end

	def show
		@slideshows = Slideshow.limit(10).order("weight ASC").page(params[:page]).per(9)
		@slideshow = Slideshow.find(params[:id])
		render layout: 'full'
	end

end