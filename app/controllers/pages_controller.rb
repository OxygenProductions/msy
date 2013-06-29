class PagesController < ApplicationController

	#Home
	def home
	end

	#YTT
	def ytt
	end

	def ytt200
	end

	def ytt500
	end

	def yttdepth
	end

	def yttreg
	end

	def yttapply
	end

	def yttfaq
	end

	def yttsay
		@testimonials = Testimonial.all
	end

	#Workshops
	def workshops
	end

	def topics
	end

	def book
		render layout: 'full'
	end

	#Classes
	def classes
	end

	def newtoyoga
	end

	def scyoga
	end

	#Resources
	def resources
	end

	def audio
	end

	def reading
	end

	def images
	end

	def school
	end

	#Blog
	def blog
	end

	#Contact
	def contact
	end

end