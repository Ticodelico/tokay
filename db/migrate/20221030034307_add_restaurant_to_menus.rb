class AddRestaurantToMenus < ActiveRecord::Migration[7.0]
  def change
    add_reference :menus, :restaurant, foreign_key: true
  end
end
