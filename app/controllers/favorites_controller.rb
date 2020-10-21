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
        byebug
        coffee_shop = CoffeeShop.find_or_create_by(:name => params[:coffee_shop_name])
        favorite = Favorite.new
        favorite.name = coffee_shop.name
        favorite.user_id = @user.id
        favorite.coffee_shop_id = coffee_shop.id
        favorite.save
        render json: favorite
    end

    def update
        favorite = Favorite.find(params[:id])
        favorite.update(favorite_params)
        favorite.save
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {message: "Successfully removed favorite"}
    end

    private

    def favorite_params
        params.require(:favorite).permit(:coffee_shop_id, :user_id)
    end
end


