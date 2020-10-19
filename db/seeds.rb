User.destroy_all
CoffeeShop.destroy_all
Favorite.destroy_all
Review.destroy_all


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create( city: "Seattle", img_url:"https://bardbehavioralhealth.com/wp-content/uploads/2018/11/create-a-gravatar-beard.png", username:"Gabriel", password:"12345")
        
coffee_shops = [
    {lat: 1, lng: 2, name: "beans", address: "123 corner street", zipcode: 12345, description: "amazing coffee!!", photo:"https://bardbehavioralhealth.com/wp-content/uploads/2018/11/create-a-gravatar-beard.png" }
]
coffee_shops.each {|coffee_shops| CoffeeShop.create(coffee_shops)}

favorites = [
    {user_id: User.all.sample.id, coffee_shop_id: CoffeeShop.all.sample.id}
]
favorites.each {|favorite| Favorite.create(favorite)}

reviews = [
    {reviewed_coffee: "review content", coffee_shop_name: CoffeeShop.all.sample.name ,coffee_shop_id: CoffeeShop.all.sample.id, user_id: User.all.sample.id, user_username: User.all.sample.username, rating: 5 }
]
reviews.each {|review| Review.create(review)}

puts "seeds working!"

# class CreateReviews < ActiveRecord::Migration[6.0]
#     def change
#       create_table :reviews do |t|
#         t.integer :reviewed_coffee
#         t.string :coffee_shop_id
#         t.integer :user_id
#         t.integer :rating
  
#         t.timestamps
#       end
#     end
#   end
  