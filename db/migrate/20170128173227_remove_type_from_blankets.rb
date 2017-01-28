class RemoveTypeFromBlankets < ActiveRecord::Migration[5.0]
  def change
    remove_column :blankets, :type, :string
  end
end
