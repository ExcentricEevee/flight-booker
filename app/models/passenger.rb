class Passenger < ApplicationRecord
    belongs_to :booking, class_name: "Booking"

    validates :name, presence: true, length: { in: 2..36 }
    validates :email, presence: true
end