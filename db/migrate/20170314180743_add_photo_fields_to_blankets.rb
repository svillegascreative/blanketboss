class AddPhotoFieldsToBlankets < ActiveRecord::Migration[5.0]
  def change
    add_column :blankets, :photo_cache, :string
    add_column :blankets, :remote_photo_url, :string
  end
end
