class Suscription < ApplicationRecord
    enum :name, [ :classic, :gold, :platinum, :signature ]

    has_many :restaurants, dependent: :restrict_with_exception
end
