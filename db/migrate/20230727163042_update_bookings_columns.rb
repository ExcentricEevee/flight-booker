class UpdateBookingsColumns < ActiveRecord::Migration[7.0]
  def change
    change_table :bookings do |t|
      t.remove :flight_id_id
      t.references :flight
      t.references :passenger  
    end
  end
end
