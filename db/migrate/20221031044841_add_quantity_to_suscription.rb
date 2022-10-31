class AddQuantityToSuscription < ActiveRecord::Migration[7.0]
  def change
    add_column :suscriptions, :quantity, :integer
  end
end
