class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def self.get_start_times
    dates = Flight.find_by_sql("SELECT DISTINCT start_time FROM flights WHERE start_time IS NOT NULL ORDER BY start_time DESC")
  end

  def flight_date_formatted
    start_time.strftime("%m/%d/%Y")
  end

  def self.search_query(params)
    Flight.where(departure_airport_id: params[:departing_airport])
  end
end
