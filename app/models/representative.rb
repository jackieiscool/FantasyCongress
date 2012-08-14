class Representative < ActiveRecord::Base
  attr_accessible :caucus_id, :firstname, :lastname, :bioguide_id, :party, :state
  belongs_to :team
end
