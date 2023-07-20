class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def self.flight_search(params)
    Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND DATE(start_time) = ?",
          params[:departure_airport_id], params[:arrival_airport_id], params[:start_time])
  end

  def start_time_formatted
    start_time.strftime("%m/%d/%Y")
  end
end
