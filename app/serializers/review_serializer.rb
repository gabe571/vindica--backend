class ReviewSerializer < ActiveModel::Serializer
    attributes :coffee_shop, :coffee_shop_name, :id,:reviewed_coffee, :user_username, :user_id, :rating
    belongs_to :coffee_shop
    belongs_to :user
  end
  