class AddMenuToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :menu, null: false, foreign_key: true
  end
end
