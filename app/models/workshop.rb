class Workshop < ActiveRecord::Base
  attr_accessible :content, :date, :summary, :title
end
