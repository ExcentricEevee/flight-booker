class BookingsController < ApplicationController
    def new
        @flight = Flight.find(params[:flight])
        @booking = Booking.new
        params[:passengers].to_i.times { @booking.passengers.build }
    end

    def create
        @flight = Flight.find(params[:booking][:flight_id])
        @booking = Booking.new(booking_params)

        if @booking.save
            flash[:notice] = "Flight booked successfully! Enjoy your trip"
            redirect_to root_path
        else
            flash[:alert] = "Something went wrong"
            render :new, status: :unprocessable_entity
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
end
