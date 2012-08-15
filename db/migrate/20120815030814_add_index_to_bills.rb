class AddIndexToBills < ActiveRecord::Migration
  def change
    add_index :bills, :unique_id, :unique => true
  end
end
