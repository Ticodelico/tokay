class AddMenuToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :menu, foreign_key: true
  end
end
