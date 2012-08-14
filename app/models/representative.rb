class Representative < ActiveRecord::Base
  attr_accessible :caucus_id, :firstname, :lastname, :bioguide_id, :party, :state
  belongs_to :team
  # validates_uniqueness_of :bioguide_id
end
