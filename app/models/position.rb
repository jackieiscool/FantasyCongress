class Position < ActiveRecord::Base
  attr_accessible :team_id, :representative_id, :lastname
  belongs_to :team
  belongs_to :representative


  def lastname

  end


end
