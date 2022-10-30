class AddSuscriptionToRestaurant < ActiveRecord::Migration[7.0]
  def change
    add_reference :restaurants, :suscription, null: false, foreign_key: true
  end
end
