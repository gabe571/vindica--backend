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
users = [
    {city: "Seattle",
    username: "Red",
    img_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019027/rs_600x600-190127175953-600.2019-sag-awards-red-carpet-fashions-john-krasinsk.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top"}
    ]

    users.each {|user| User.create(user)}

    coffee_shops = [
        {lat: 0,
        lng: 0,
        name: "white", 
        address: "https://akns-images.eonline.com/eol_images/Entire_Site/2019027/rs_600x600-190127175953-600.2019-sag-awards-red-carpet-fashions-john-krasinsk.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top",
        zipcode: "85303",
        description: "testing",
        photo: "https://akns-images.eonline.com/eol_images/Entire_Site/2019027/rs_600x600-190127175953-600.2019-sag-awards-red-carpet-fashions-john-krasinsk.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top"
        }
        ]
    
    coffee_shops.each {|coffee_shop| CoffeeShop.create(coffee_shop)}

        favorites = [
            {coffee_shop_id: 1,
            user_id: 1,
            }
            ]
            favorites.each {|favorite| Favorite.create(favorite)}

     reviews = [
            {reviewed_coffee: 1,
            coffee_shop_id: 1,
            user_id: 1, 
            rating: 1 }
            ]
            
                reviews.each {|review| Review.create(review)}
            
        
puts "seeds working!"



