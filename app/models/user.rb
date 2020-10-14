class User < ApplicationRecord
    validates :username, length: { minimum: 5 }
    validates_associated :favorites
    has_many :favorites
    has_many :coffee_shops, through: :favorites
    has_secure_password 
end
