class AddColumnBill < ActiveRecord::Migration
  def change
    add_column :bills, :bioguide_id, :string
    add_column :bills, :unique_id, :string
    add_column :bills, :bill_type, :string
    add_column :bills, :chamber, :string
    add_column :bills, :enacted, :string
  end

end


 # bill_info_hash[:bioguide_id] = bill[:sponsor][:bioguide_id]
 # bill_info_hash[:title] = bill[:official_title]
 # bill_info_hash[:actions] = bill[:actions]
 # bill_info_hash[:unique_id] = bill[:bill_id]
 # bill_info_hash[:bill_type] = bill[:bill_type]
 # bill_info_hash[:chamber] = bill[:chamber]
 # bill_info_hash[:enacted] = bill[:enacted]