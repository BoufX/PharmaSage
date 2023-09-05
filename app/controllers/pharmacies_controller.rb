class PharmaciesController < ApplicationController
    def index 
        @pharmacies = Pharmacy.all
        # @on_guard_pharmacies = filter_on_guard_pharmacies(@pharmacies)
        @markers = @pharmacies.geocoded.map do |pharmacy|
            {
              lat: pharmacy.latitude,
              lng: pharmacy.longitude
            }
        end
         end
      
       def show
        @pharmacy = Pharmacy.find(params[:id])
        end
      
        # def filter_on_guard_pharmacies(pharmacies)
        #   pharmacies.select { |pharmacy| pharmacy.on_guard }
        # end
end
