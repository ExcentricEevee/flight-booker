class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.order(:code).map{ |a| [ a.code, a.id ] }
        # list only the dates that appear in flights
        @date_options = Flight.all.order(:start_time)
                            .map{ |f| [ f.start_time_formatted, f.start_time ] }
    end
end
