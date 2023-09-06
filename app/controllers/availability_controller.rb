class AvailabilityController < ApplicationController
  def search
    
    medicine_name = params[:medicine_name]

    if params[:query].present?
      @availabilities = Availability.joins(:pharmacies, :medicines)
      .where("medicines.name ILIKE ?", "%#{medicine_name}%")
      .distinct
     else
      @availabilities = Availability.all
    end
  end
end