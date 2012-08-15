class Team < ActiveRecord::Base
  attr_accessible :name, :user_id, :representatives_attributes, :polls_attributes
  belongs_to :user
  has_many :representatives
  has_one :polls
  accepts_nested_attributes_for :representatives


end
