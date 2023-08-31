class PharmaciesController < ApplicationController
    def index 
        @pharmacies = Pharmacy.all
        @on_guard_pharmacies = filter_on_guard_pharmacies(@pharmacies)
        end
      
       def show
        @pharmacy = Pharmacy.find(params[:id])
        end
      
        def filter_on_guard_pharmacies(pharmacies)
          pharmacies.select { |pharmacy| pharmacy.on_guard }
        end
end
