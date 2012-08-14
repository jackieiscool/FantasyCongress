class AddIndexRepresentativesBioguideId < ActiveRecord::Migration
  def change
    add_index :representatives, :bioguide_id, :unique => true
  end
end
