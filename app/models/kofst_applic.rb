class KofstApplic < ActiveRecord::Base
  # attr_accessible :user_id
  belongs_to :user  
  belongs_to :science_specific_field
  belongs_to :science_field
end
