class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :area_code
      t.integer :phone
      t.boolean :active
      t.string :hours
      t.integer :seasonal
      t.integer :occupancy
      t.integer :price
      t.string :reservation_notice
      t.string :owner
      t.timestamps
    end
    add_index :locations, [:zip, :name]
    add_index :locations, :zip
  end
end
