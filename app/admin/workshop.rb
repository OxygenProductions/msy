ActiveAdmin.register Workshop do
  
  index do
    column :id
    column :title
    column :date
    column :created_at
    column :updated_at
    default_actions
  end
  
  form do |f|                         
    f.inputs "Workshop Details" do       
      f.input :title
      #f.input :date, :as => :datepicker
      f.input :summary
      f.input :content, :as => :ckeditor
      
    end                               
    f.actions                         
  end  
  
end
