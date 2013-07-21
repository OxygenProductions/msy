class WorkshopsController < ApplicationController

	def index
		@workshops = Workshop.all
		@workshops_by_date = @workshops.group_by(&:date)
		@workshops_by_end_date = @workshops.group_by(&:end_date)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
		render layout: 'full'
	end
	
	def show
		@workshop = Workshop.find(params[:id])
		@workshops = Workshop.all
		@workshops_by_date = @workshops.group_by(&:date)
		@workshops_by_end_date = @workshops.group_by(&:end_date)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
		render layout: 'full'
	end
	
	def topics
		#render layout: 'full'
	end
	
	def book
		@workshops = Workshop.all
		@workshops_by_date = @workshops.group_by(&:date)
		@workshops_by_end_date = @workshops.group_by(&:end_date)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
		render layout: 'full'
	end

end