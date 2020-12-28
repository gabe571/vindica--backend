class CoffeeShop < ApplicationRecord
    has_many :favorites
    has_many :favorited_users, through: :favorites, source: :user
    has_many :reviews
    has_many :users, through: :reviews
end
    def self.find_coffee_shop(params)
        where(:name => params[:name]).find_or_create do |coffee_shop|
    coffee_shop.id = coffee_shop[:coffee_shop_id]
    coffee_shop.name = coffee_shop_name[:coffee_shop_name]
     end
    end
