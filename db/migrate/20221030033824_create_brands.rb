class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :primary_color
      t.string :secundary_color
      t.string :slogan

      t.timestamps
    end
  end
end
