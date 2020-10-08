class CoffeeShop < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    has_many :reviews
    has_many :reviewed_users, through: :reviews
end