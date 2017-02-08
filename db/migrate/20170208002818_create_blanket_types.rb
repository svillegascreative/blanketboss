class CreateBlanketTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :blanket_types do |t|
      t.string :blanket_type
      t.belongs_to :blanket, index: true

      t.timestamps
    end
  end
end
