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

require 'spec_helper'
