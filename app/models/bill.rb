class Bill < ActiveRecord::Base
  attr_accessible :description, :representative_id, :status, :title, :bioguide_id,
                  :unique_id, :bill_type, :chamber, :enacted
end


