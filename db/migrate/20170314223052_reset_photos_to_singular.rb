class ResetPhotosToSingular < ActiveRecord::Migration[5.0]
  def change
    remove_column :blankets, :photos, :json
    add_column :blankets, :photo, :string
  end
end
