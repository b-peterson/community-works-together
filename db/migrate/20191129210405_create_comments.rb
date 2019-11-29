class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :event_id
      t.text :comment
      t.timestamps
    end

    add_index :comments, [:event_id, :user_id]
    add_index :comments, :event_id
  end
end
