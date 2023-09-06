class PharmaciesController < ApplicationController
    def index 
       @availabilities = Availability.all
       @pharmacies = Pharmacy.all
        if params[:query].present?
          sql_subquery = <<~SQL
          medicines.name ILIKE :query
          OR medicines.name ILIKE :query
          SQL
          @availabilities = Availability.joins(:medicine).where(sql_subquery, query: "%#{params[:query]}%")
          @pharmacies = Pharmacy.where(id: @availabilities.pluck(:pharmacy_id))
        end
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
