class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :blankets, :statuses do |t|
      # t.index [:blanket_id, :status_id]
      # t.index [:status_id, :blanket_id]
    end
  end
end
