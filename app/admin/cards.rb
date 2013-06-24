ActiveAdmin.register Card do
  
  form do |f|
    f.inputs "Card Details" do
      f.input :author
      f.input :envelope
      f.input :name
      f.input :is_new
      f.input :card_type, :as => :select, :collection => ['ecard', 'einvite']
      f.input :thumbnail
      f.input :thumbnail_name
    end
    
    f.buttons
  end
  
end
