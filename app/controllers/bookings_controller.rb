class BookingsController < ApplicationController
    def new
        @flight = Flight.find(params[:flight])
        @booking = Booking.new
        params[:passengers].to_i.times { @booking.passenger.build }
    end
end
