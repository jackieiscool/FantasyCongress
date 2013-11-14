class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :title
      t.string :description
      t.string :status
      t.integer :representative_id
      t.string :bioguide_id
      t.string :unique_id
      t.string :bill_type
      t.string :chamber
      t.string :enacted
      t.timestamps
    end
    add_index :bills, :unique_id, :unique => true
  end
end
