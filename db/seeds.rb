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
    password: "white", 
    img_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019027/rs_600x600-190127175953-600.2019-sag-awards-red-carpet-fashions-john-krasinsk.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top"}
    ]

    users.each {|user| User.create(user)}

puts "seeds working!"
    # t.string :city
    # t.string :img_url
    # t.string :username
    # t.string :password
    # t.string :password_digest
