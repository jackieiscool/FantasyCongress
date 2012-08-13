class RemoveCaucusIdFromRepresentatives < ActiveRecord::Migration
  def up
    remove_column :representatives, :caucus_id
  end

  # def down
  #   add_column :representatives, :caucus_id, :integer
  # end
end
