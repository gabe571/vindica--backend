class ReviewsController < ApplicationController
    def index
        reviews = Review.all 
        render json: reviews
    end

    def show
        review = Review.find_by(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        review.save
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {message: "Successfully removed favorite"}
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :coffee_shop_id, :coffee_shop_name, :user_username, :reviewed_coffee, :rating, :id)
    end
end


