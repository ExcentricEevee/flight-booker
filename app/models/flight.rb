class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def self.search_query(params)
    flights = Flight.where(departure_airport_id: params[:departing_airport]).where(arrival_airport_id: params[:arriving_airport])

    formatted_search_date = Flight.formatted_date(params[:date])
    result = flights.select { |flight| flight.start_time.to_date == formatted_search_date }
  end



  def self.formatted_date(date_hash)
    formatted_date = "#{date_hash[:month]}/#{date_hash[:day]}/#{date_hash[:year]}"
    parsed_date = Date.strptime(formatted_date, "%m/%d/%Y")
  end

  def self.flights_with_matching_dates(search_date)
    result = Array.new
    Flight.find_each do |flight|
      if flight.flight_date_formatted == search_date
        result << flight
      end
    end

    result
  end
end
