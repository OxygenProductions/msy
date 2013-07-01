class VideosController < ApplicationController

	def index
		if params[:tag]
			@videos = Video.order("weight ASC").tagged_with(params[:tag], :on => :video_tags ) #.page(params[:page]).per(9)
		else
			@videos = Video.order("weight ASC") #.page(params[:page]).per(9)
		end
		render layout: 'full'
	end

	def show
		@videos = Video.order("weight ASC") #.page(params[:page]).per(9)
		@video = Video.find(params[:id])
		render layout: 'full'
	end

end