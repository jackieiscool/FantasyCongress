class Team < ActiveRecord::Base
  attr_accessible :name, :user_id, :representatives_attributes, :polls_attributes
  belongs_to :user
  has_many :representatives, :through => :positions
  has_many :positions
  #accepts_nested_attributes_for :representatives

end
