class Category < ApplicationRecord
  has_many :products, dependent: :restrict_with_exception
  belongs_to :menu

end
