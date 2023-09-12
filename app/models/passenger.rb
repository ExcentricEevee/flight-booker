class Passenger < ApplicationRecord
    belongs_to :booking, class_name: "Booking"
    # has_many :flights, through: :bookings

    validates :name, presence: true, length: { in: 2..36 }
    validates :email, presence: true
end