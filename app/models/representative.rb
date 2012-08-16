class Representative < ActiveRecord::Base
  attr_accessible :caucus_id, :firstname, :lastname, :bioguide_id, :party, :state
  has_many :teams, :through => :positions
  has_many :positions
end
