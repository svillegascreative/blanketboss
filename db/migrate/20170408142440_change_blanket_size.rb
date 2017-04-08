class ChangeBlanketSize < ActiveRecord::Migration[5.0]
  def change
    rename_column :blankets, :size, :blanket_size 
  end
end
