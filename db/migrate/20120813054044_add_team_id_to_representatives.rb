class AddTeamIdToRepresentatives < ActiveRecord::Migration
  def change
    add_column :representatives, :team_id, :integer
  end
end
