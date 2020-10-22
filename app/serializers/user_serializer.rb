class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :favorites
    has_many :favorite_coffee_shops, through: :favorites, source: :coffee_shop
    has_many :reviews
    has_many :coffee_shops, through: :reviews
  end
  