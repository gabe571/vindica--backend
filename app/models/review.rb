class Review < ApplicationRecord
    belongs_to :coffee_shops
    belongs_to :users
end
