class User < ApplicationRecord
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 5 }
    has_many :favorites
    has_many :favorite_coffee_shops, through: :favorites, source: :coffee_shop
    has_many :reviews
    has_many :coffee_shops, through: :reviews
    has_secure_password 
end
