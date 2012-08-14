class RenameNameToFirstname < ActiveRecord::Migration
  def change
    rename_column :representatives, :name, :firstname
    add_column :representatives, :lastname, :string
  end
end
