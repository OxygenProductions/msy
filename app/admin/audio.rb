ActiveAdmin.register Audio do
  
  index do
    column :id
    column :weight
    column :title
    column :created_at
    column :updated_at
    default_actions
  end
  
  form do |f|                         
    f.inputs "Audio Details" do       
      f.input :title
      f.input :audio_tag_list                        
      f.input :audio
      f.input :audio_url, :input_html => { :disabled => true }
      f.input :image, :hint => f.template.image_tag(f.object.image.url(:thumb))
      f.input :image_url, :input_html => { :disabled => true }
      f.input :weight
    end                               
    f.actions                         
  end  
  
end
