class CreateCaucus < ActiveRecord::Migration
  def change
    create_table :caucus do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
