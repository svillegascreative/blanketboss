class AddDetailsToBlankets < ActiveRecord::Migration[5.0]
  def change
    add_column :blankets, :blanket_type, :string
    add_column :blankets, :size, :string
    add_column :blankets, :brand, :string
  end
end
