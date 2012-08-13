class RemoveCaucus < ActiveRecord::Migration
  def change
    drop_table :caucus
  end

end
