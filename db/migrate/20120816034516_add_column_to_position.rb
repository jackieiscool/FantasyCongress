class AddColumnToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :team_id, :integer
    add_column :positions, :representative_id, :integer
  end
end
