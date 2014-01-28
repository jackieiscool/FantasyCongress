# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  league_id  :integer
#

class Team < ActiveRecord::Base
  attr_accessible :name, :user_id, :representatives_attributes, :polls_attributes
  belongs_to :user
  belongs_to :league
  has_many :positions
  has_many :representatives, :through => :positions

  validates :name, uniqueness: true

end
