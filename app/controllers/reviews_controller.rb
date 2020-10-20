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
        coffee_shop = CoffeeShop.find_or_create_by(name: params[:review][:coffee_shop_name])
        review = Review.new(review_params)
        review.coffee_shop_id = coffee_shop.id
        review.save
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
        params.require(:review).permit(:user_id, :coffee_shop_id, :user_username, :reviewed_coffee, :rating, :coffee_shop_name)
    end
end


