class AudiosController < ApplicationController

	def index
		if params[:tag]
			@audios = Audio.order("weight ASC").tagged_with(params[:tag], :on => :audio_tags) #.page(params[:page]).per(9)
		else
			@audios = Audio.order("weight ASC") #.page(params[:page]).per(9)
		end
		render layout: 'full'
	end

	def show
		@audios = Audio.order("weight ASC") #.page(params[:page]).per(9)
		@audio = Audio.find(params[:id])
		render layout: 'full'
	end

end