class User < ApplicationRecord
    has_many :favorites
    has_many :coffee_shops, through: :favorites
end
