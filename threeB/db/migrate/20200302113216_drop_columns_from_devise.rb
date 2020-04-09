class DropColumnsFromDevise < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :date_of_birth
    remove_column :users, :location
  end
end
