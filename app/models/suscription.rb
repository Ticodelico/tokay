class Suscription < ApplicationRecord
    enum :name, [ :clasica, :gold, :premiun, :signature ]

    has_many :restaurants, dependent: :restrict_with_exception
end
