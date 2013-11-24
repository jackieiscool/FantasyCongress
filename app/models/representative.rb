# == Schema Information
#
# Table name: representatives
#
#  id          :integer          not null, primary key
#  firstname   :string(255)
#  lastname    :string(255)
#  state       :string(255)
#  party       :string(255)
#  team_id     :integer
#  bioguide_id :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Representative < ActiveRecord::Base
  attr_accessible :caucus_id, :firstname, :lastname, :bioguide_id, :party, :state
  has_many :positions
  has_many :teams, :through => :positions

  def name
    "#{self.firstname} #{self.lastname}" 
  end
end
