class Representative < ActiveRecord::Base
  attr_accessible :caucus_id, :name, :party, :state
  belongs_to :team
end
