# == Schema Information
#
# Table name: positions
#
#  id                :integer          not null, primary key
#  team_id           :integer
#  representative_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Position < ActiveRecord::Base
  attr_accessible :team_id, :representative_id, :lastname
  belongs_to :team
  belongs_to :representative


  def lastname

  end


end
