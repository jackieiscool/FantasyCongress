# == Schema Information
#
# Table name: bills
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  description       :string(255)
#  status            :string(255)
#  representative_id :integer
#  bioguide_id       :string(255)
#  unique_id         :string(255)
#  bill_type         :string(255)
#  chamber           :string(255)
#  enacted           :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'


