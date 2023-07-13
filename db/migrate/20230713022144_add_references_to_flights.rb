class AddReferencesToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure_airport_id, :bigint, foreign_key: true
    add_column :flights, :arrival_airport_id, :bigint, foreign_key: true
  end
end
