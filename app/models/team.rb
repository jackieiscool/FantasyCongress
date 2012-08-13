class Team < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user
  has_many :representatives
  accepts_nested_attributes_for :representatives
end
