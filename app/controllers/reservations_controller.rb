class ReservationsController < ApplicationController
    def index
        @reservations = current_user.reservations
      end

      def new
        @reservation = Reservation.new
      end

      def show
        @reservation = Reservation.find(params[:id])
      end
end
