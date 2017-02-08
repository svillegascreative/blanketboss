class FixBlanketAssociation < ActiveRecord::Migration[5.0]
  def change
    change_table :blanket_types do |t|
      t.remove :blanket_id
      t.remove :index_blanket_types_on_blanket_id
    end

    change_table :blankets do |t|
      t.rename :blanket_type, :blanket_type_id
    end
  end
end
