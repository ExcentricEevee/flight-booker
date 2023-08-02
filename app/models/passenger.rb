class Passenger < ApplicationRecord
    belongs_to :bookings
    # has_many :flights, through: :bookings

    validates :name, presence: true, length: { in: 2..36 }
    validates :email, presence: true
end