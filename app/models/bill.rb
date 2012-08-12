class Bill < ActiveRecord::Base
  attr_accessible :description, :representative_id, :status, :title
end
