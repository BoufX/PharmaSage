class ReservationController < ApplicationController
    def index
        @reservations = current_user.reservations
      end
    
      def new
        @reservation = Reservation.new
      end
end
