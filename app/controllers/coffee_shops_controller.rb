class CoffeeShopsController < ApplicationController
        def index
            coffee_shops = CoffeeShop.all 
            render json: coffee_shops
        end
    
        def show
            coffee_shop = CoffeeShop.find_by(params[:id])
            render json: coffee_shop
        end
    
        def create
            coffee_shop = CoffeeShop.create(coffee_shop_params)
            render json: coffee_shop
        end
    
        def update
            coffee_shop = CoffeeShop.find(params[:id])
            coffee_shop.update(coffee_shop_params)
            coffee_shop.save
            render json: coffee_shop
        end
    
        def destroy
            guild = CoffeeShop.find(params[:id])
            coffee_shop.destroy
            render json: {message: "Successfully removed coffee shop"}
        end
    
        private
    
        def coffee_shop_params
            params.require(:coffee_shop).permit(:name, :image_url, :phone :id)
        end
    end


    