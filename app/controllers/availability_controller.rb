class AvailabilityController < ApplicationController
    def check_availability
        medicine_name = params[:medicine_name]
        pharmacy_name = params[:pharmacy_name]
    
        medicine = Medicine.find_by(name: medicine_name)
        pharmacy = Pharmacy.find_by(name: pharmacy_name)
      end
end
