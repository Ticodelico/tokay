class AddMenuToBrand < ActiveRecord::Migration[7.0]
  def change
    add_reference :brands, :menu, null: false, foreign_key: true
  end
end
