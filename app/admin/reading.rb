ActiveAdmin.register Reading do
  
  index do
    column :id
    column :weight
    column :title
    column :created_at
    column :updated_at
    default_actions
  end
  
  form do |f|                         
    f.inputs "Reading Details" do       
      f.input :title
      f.input :reading_tag_list
      f.input :content, :as => :ckeditor
      f.input :image, :hint => f.template.image_tag(f.object.image.url(:thumb))
      f.input :image_url, :input_html => { :disabled => true }
      f.input :weight
    end                               
    f.actions                         
  end  
  
end
