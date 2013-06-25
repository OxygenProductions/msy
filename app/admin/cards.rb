class Card < ActiveRecord::Base
  
  mount_uploader :thumbnail, ImageUploader
  
  belongs_to :author
  belongs_to :envelope
  
  has_many :fields
  has_many :images, foreign_key: 'card_id'
  
  attr_accessible :author_id, :card_type, :envelope_id, :is_new, :name, :tag_list, :thumbnail, :image_ids, :field_ids, :thumbnail_name, :thumbnail_size, :thumbnail_type
  acts_as_taggable
  
  before_save :update_image_details

  def update_image_details
    # => before the image is created, the file name/type and size need to be added in the db
    self.assign_attributes(thumbnail_name: thumbnail.file.file.split('/').last, thumbnail_type: thumbnail.file.content_type, thumbnail_size: thumbnail.file.size)
  end
  
  # Search filter
  def self.filter_by_params(params)
    scoped = self.scoped
    
    #tags
    if params[:tag] && !params[:tag].blank?
    	scoped = scoped.tagged_with(params[:tag])
    end
    
    if params[:card_filter] && !params[:card_filter].blank?
    	filter = params[:card_filter]
    	
    	#author
   		if filter[:author] && !filter[:author].blank?
   			scoped = scoped.where(:author_id => filter[:author])
   		end
   		
    	#search
    	if filter[:search] && !filter[:search].blank?
 	    	scoped = scoped.where("name like ?", "%#{filter[:search]}%")
 	    end
 	    
 	    #options
 	    if filter[:options]
 	    	options = filter[:options]
 	    	
 	    	#new
 	    	if options.include? 'New Cards'
 	    		scoped = scoped.where(:is_new => true)
 	    	end	
 	    	
 	    	#downloads
 	    	if options.include? 'Downloads'
 	    		scoped
 	    	end
 	    	
 	    	#ecard
 	    	if options.include? 'eCards'
 	    		if options.include? 'eInvites'
 	    			scoped = scoped
 	    		else
 	    			scoped = scoped.where(:card_type => 'ecard')
 	    		end
 	    		
 	    	#einvite
 	    	else
 	    		if options.include? 'eInvites'
 	    			scoped = scoped.where(:card_type => 'einvite')
 	    		else
 	    			scoped = scoped
 	    		end
 	    	end
 	    
 	    else
 	    	scoped
 	    end
 	    
 	  else
 	    scoped
    end
    
    scoped
    
  end
  
end
