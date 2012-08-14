class AddBioguideIdToRepresentative < ActiveRecord::Migration
  def change
    add_column :representatives, :bioguide_id, :string
  end
end
