class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :team_id
      t.integer :representative_id
      t.timestamps
    end
  end
end
