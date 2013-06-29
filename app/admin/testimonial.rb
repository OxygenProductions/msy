ActiveAdmin.register Testimonial do
  
  index do
    column :id
    column :weight
    column :title
    column :created_at
    column :updated_at
    default_actions
  end
  
  form do |f|                         
    f.inputs "Testimonial Details" do       
      f.input :title
      f.input :summary
      f.input :content, :as => :ckeditor
      f.input :weight
      
    end                               
    f.actions                         
  end  
  
end
