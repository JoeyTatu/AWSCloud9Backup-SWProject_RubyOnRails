class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :location
      t.string :headline
      t.text :bio

      t.timestamps
    end
  end
end
