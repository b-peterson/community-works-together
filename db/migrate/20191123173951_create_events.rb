class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :location_id
      t.integer :user_id
      t.datetime :create_date
      t.datetime :event_start
      t.datetime :event_end
      t.integer :group_id
      t.boolean :active
      t.datetime :next_date
      t.boolean :recurring
      t.integer :attendance
      t.integer :funds_raised
      t.integer :views
      t.timestamps
    end

    add_index :events, [:location_id, :user_id]
    add_index :events, :location_id
  end
end
