class PagesController < ApplicationController
<<<<<<< HEAD

=======
	
>>>>>>> theme
	def index
	end
	
	def ecards
<<<<<<< HEAD
	end
	
	def einvites
=======
		@cards = Card.where(:card_type => 'ecard').page(params[:page]).per(9)
	end
	
	def einvites
		@cards = Card.where(:card_type => 'einvite').page(params[:page]).per(9)
>>>>>>> theme
	end
	
	def downloads
	end
	
	def calendar
	end
	
<<<<<<< HEAD
	def about
	end
	
=======
	def plans
	end
	
	#about pages
	def about
	end
	
		def staff
		end
		
		def membership
		end
		
		def terms
		end
		
		def privacy
		end
		
		def faqs
		end
		
		def become
		end
		
		def help 
		end
	
	
>>>>>>> theme
	def artists
	end
	
	def contact
	end
	
<<<<<<< HEAD
	def privacy
	end
	
	def terms
	end
=======
	
	
	
>>>>>>> theme

end
