class Favorite < ApplicationRecord
    belongs_to :coffee_shops
    belong_to :users
end
