class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def self.search_query(params)
    # retreive a list of flights based on selected to and from airports
    flights = Flight.where(departure_airport_id: params[:departing_airport]).where(arrival_airport_id: params[:arriving_airport])

    # now filter that list based on when they want to go
    formatted_search_date = Flight.formatted_date(params[:date])
    result = flights.select { |flight| flight.start_time.to_date == formatted_search_date }
  end

  def details
    "From: #{departure_airport.airport_code} - To: #{arrival_airport.airport_code} at #{start_time.to_date} for #{duration} minutes"
  end

  # this relies on the date_hash having the three components separate from each other
  # be wary of this if you change how the query string delivers its date info
  def self.formatted_date(date_hash)
    formatted_date = "#{date_hash[:month]}/#{date_hash[:day]}/#{date_hash[:year]}"
    parsed_date = Date.strptime(formatted_date, "%m/%d/%Y")
  end
end
