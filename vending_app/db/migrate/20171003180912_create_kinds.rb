class CreateKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds do |t|
      t.string :snack_type

      t.timestamps
    end
  end
end
