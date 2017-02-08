class ChangeStatusInBlankets < ActiveRecord::Migration[5.0]
  def change
    change_table :blankets do |t|
      t.remove :status
      t.integer :status_ids
    end
  end
end
