class AddAreacodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :area_code, :integer
  end
end
