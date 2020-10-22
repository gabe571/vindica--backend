class FavoriteSerializer < ActiveModel::Serializer
    attributes :id
    has_one :coffee_shop
    has_one :user
  end