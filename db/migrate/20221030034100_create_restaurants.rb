class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :reception_number
      t.string :contact_number
      t.string :email
      t.string :facebook_site
      t.string :web_site
      t.boolean :active

      t.timestamps
    end
  end
end
