class Passenger < ApplicationRecord
    has_many :bookings
    has_many :flights, through: :bookings

    validates :name, presence: true, length: { in: 2..36 }
    validates :email, presence: true
end