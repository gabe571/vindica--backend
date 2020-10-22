class CoffeeShopSerializer < ActiveModel::Serializer
    attributes :name, :image_url, :phone
    has_many :favorites
    has_many :favorited_users, through: :favorites, source: :user
    has_many :reviews
    has_many :users, through: :reviews
end

  