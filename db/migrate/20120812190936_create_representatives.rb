class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :name
      t.string :state
      t.string :party
      t.integer :team_id

      t.timestamps
    end
  end
end
