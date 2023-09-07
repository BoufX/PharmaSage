class ReviewsController < ApplicationController
    before_action :set_pharmacy, only: %i[new create]

    def index 
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @pharmacy= Pharmacy.find(params[:pharmacy_id])
        @review= Review.new
      end

 def create
         @review= Review.new(review_params)
        @review.pharmacy = @pharmacy
        if @review.save
          redirect_to pharmacy_path(@pharmacy)
        else
          render :new, status: :unprocessable_entity
        end
      end

      private

       def set_pharmacy
        @pharmacy= Pharmacy.find(params[:pharmacy_id])
       end

       def review_params
        params.require(:review).permit(:name, :comment, :rating, :pharmacy_id, :post_date)
       end
end
