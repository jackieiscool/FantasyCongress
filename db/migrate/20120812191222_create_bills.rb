class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :title
      t.string :description
      t.string :status
      t.integer :representative_id

      t.timestamps
    end
  end
end
