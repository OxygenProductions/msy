class Apply
  include ActiveAttr::Model
  
  attribute :program
  attribute :name
  attribute :nickname
  attribute :address
  attribute :city
  attribute :state
  attribute :zip
  attribute :phone
  attribute :email
  attribute :website
  
  validates_presence_of :program, :name, :address, :city, :state, :zip, :phone, :email  
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  
  attribute :em_name
  attribute :em_rel
  attribute :em_phone
  
  validates_presence_of :em_name, :em_rel, :em_phone
  
  attribute :health
  attribute :health_dscr
  
  attribute :exp_1
  attribute :exp_2
  attribute :exp_3
  attribute :exp_4
  attribute :exp_5
  attribute :exp_6
  attribute :exp_7
  attribute :exp_8
  attribute :exp_9
  attribute :exp_10
  attribute :exp_11
  attribute :exp_12
  attribute :exp_13
  attribute :exp_14
  
  validates_presence_of :exp_1, :exp_2, :exp_3, :exp_4, :exp_5, :exp_6, :exp_7, :exp_8, :exp_9, :exp_10, :exp_11, :exp_12, :exp_13, :exp_14
  
  attribute :agree
  
  validates_presence_of :agree
  
  
  
end