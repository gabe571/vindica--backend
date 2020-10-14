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
hal = User.create(username:"hal", password:"123")
        
puts "seeds working!"



