class Representative < ActiveRecord::Base
  attr_accessible :caucus_id, :name, :party, :state
end
