class CoffeeShopSerializer < ActiveModel::Serializer
    attributes :name
    has_many :favorites
    has_many :favorited_users, through: :favorites, source: :user
    has_many :reviews
    has_many :users, through: :reviews
  end
  