class FavoriteSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :coffee_shop
    belongs_to :user
  end