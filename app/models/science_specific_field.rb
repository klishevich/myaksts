class ScienceSpecificField < ActiveRecord::Base
  belongs_to :science_field
  attr_accessible :name
end
