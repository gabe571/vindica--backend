class FavoritesController < ApplicationController
    before_action :authorized, only:[:create]
    def index
        favorites = Favorite.all 
        render json: favorites
    end

    def show
        favorite = Favorite.find_by(params[:id])
        render json: favorite
    end

    def create
        coffee_shop = CoffeeShop.find_or_create_by(:name => params[:coffee_shop_name]) do |coffee_shop|
            coffee_shop.image_url = params[:coffee_shop_image_url]
            coffee_shop.phone = params[:coffee_shop_phone]
        end
        favorite = Favorite.new
        favorite.user = @user
        favorite.coffee_shop_id = coffee_shop.id
        favorite.save
        render json: {message: "Successfully Added to Favorites"}
    end

    def update
        favorite = Favorite.find(params[:id])
        favorite.update(favorite_params)
        favorite.save
        render json: favorite
    end

    def destroy
        favorite = Favorite.find_by(params[:coffee_shop_id])
        favorite.destroy
        render json: {message: "Successfully Removed from Favorites"}
    end

    private

    def favorite_params
        params.require(:favorite).permit(:coffee_shop_id, :user_id, :coffee_shop_image_url)
    end
end