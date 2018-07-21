# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Product.create(name: "Bike 2", description:
   #{}"Created in seed")

   Product.delete_all
   Order.delete_all

   p1 = Product.create(
     name: "Bike 1",
     description: "Super fast bike",
     image_url: "https://images.unsplash.com/photo-1490367131393-6783b40924d0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1aacefca4fcf91a37fbc9f0fed8deb85&auto=format&fit=crop&w=1651&q=80",
     color: "Black",
     price: 200
   )

   p2= Product.create(
     name: "Bike 2",
     description: " Very fast bike",
     image_url: "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=51a9aa4dd828bf5d50fcd8154dc405b8&auto=format&fit=crop&w=1651&q=80",
     color: "Grey",
     price: 152
   )

   p3= Product.create(
     name: "Bike 3",
     description: "Fast bike",
     image_url: "https://images.unsplash.com/photo-1487803836022-91054ca05fdd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6965877f5debc4b6e17d54dafcbce6d2&auto=format&fit=crop&w=1651&q=80",
     color: "Blue",
     price: 100
   )

   Order.create(
     [
   {
     user_id: User.first.id,
     product_id: p1.id,
     total: 20
   },
   {
     user_id: User.first.id,
     product_id: p2.id,
     total: 20
   },
   {
     user_id: User.first.id,
     product_id: p2.id,
     total: 20
   }
     ]
   )
