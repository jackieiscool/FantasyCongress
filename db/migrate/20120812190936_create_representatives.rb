class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :firstname
      t.string :lastname
      t.string :state
      t.string :party
      t.integer :team_id
      t.string :bioguide_id
      t.timestamps
    end
    add_index :representatives, :bioguide_id, :unique => true
  end
end
