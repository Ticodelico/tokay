class CreateSuscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :suscriptions do |t|
      t.integer :name
      t.integer :limit
      t.string :price

      t.timestamps
    end
  end
end
