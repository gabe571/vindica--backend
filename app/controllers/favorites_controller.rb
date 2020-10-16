class FavoritesController < ApplicationController
        def index
            favorites = Favorite.all 
            render json: favorites
        end
    
        def show
            favorite = Favorite.find_by(params[:id])
            render json: favorite
        end
    
        def create
            favorite = Favorite.create(favorite_params)
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
            params.require(:favorite).permit(:user_id, :coffee_shop_id)
        end
    end


