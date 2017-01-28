class CreateBlankets < ActiveRecord::Migration[5.0]
  def change
    create_table :blankets do |t|
      t.string :name
      t.string :type
      t.string :colour
      t.string :trim
      t.string :note
      t.string :photo
      t.string :status

      t.timestamps
    end
  end
end
