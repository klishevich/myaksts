class ScienceField < ActiveRecord::Base
  has_many :science_specific_fields	
  attr_accessible :name
end
