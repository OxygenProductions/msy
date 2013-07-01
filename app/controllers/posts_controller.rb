class PostsController < ApplicationController

	def index
		if params[:tag]
			@posts = Post.tagged_with(params[:tag], :on => :post_tags).page(params[:page]).per(5)
		else
			@posts = Post.page(params[:page]).per(5)
		end
		#render layout: 'full'
	end

	def show
		@posts = Post.order("date DESC").page(params[:page]).per(5)
		@post = Post.where(:permalink => params[:permalink])
		#render layout: 'full'
	end

end