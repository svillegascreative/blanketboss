class AddUserIdToBlankets < ActiveRecord::Migration[5.0]
  def change
    add_column :blankets, :user_id, :integer
  end
end
