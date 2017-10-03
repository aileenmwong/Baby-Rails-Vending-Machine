class CreateVendings < ActiveRecord::Migration[5.1]
  def change
    create_table :vendings do |t|
      t.string :snack
      t.string :code
      t.string :price
      t.integer :kind_id

      t.timestamps
    end
    add_index :vendings, :kind_id
  end
end
