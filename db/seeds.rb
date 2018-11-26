# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



photos_url = [ 

"https://www.petsworld.in/blog/wp-content/uploads/2014/09/cute-kittens.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/09/adorable-cat-1024x576.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/09/lovely-white-cat-image-1024x640.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/09/funny-cat.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/09/cute-adorable-kitten.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/09/group-of-cats.jpg",
"http://www.petsworld.in/blog/wp-content/uploads/2014/11/persian-cat.jpg",
"http://www.petsworld.in/blog/wp-content/uploads/2014/11/EXOTIC.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/11/Birman.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/11/American-Shorthair1-1024x640.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/11/Oriental.jpg",
"https://www.petsworld.in/blog/wp-content/uploads/2014/11/Sphynx.jpg",
"https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6402d48f35584fbf36a874be1635374b&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1519052537078-e6302a4968d4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9b828fb6d481a5460e5faf85900624b6&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=362a7baf8e58eab5f477b13befc0e62a&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1508710599415-734cc9b287fb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=910717d33a9d13b890c1fb1e3130f186&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-0.3.5&s=d71c056d702318733a5cd9d28511e29f&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1516399779-1480b4f76df6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=91d3888b79d5fd667ad03f5833e89d45&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1531425300797-d5dc8b021c84?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=17606d2ac3f5405d3c48df241fe02444&auto=format&fit=crop&w=900&q=60",
"https://images.unsplash.com/photo-1465635290539-cac59213cba3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66bc953a81053047539a840acbaf409a&auto=format&fit=crop&w=900&q=60"

]

photos_url.each do |url|

    Item.create(title: Faker::Cat.unique.name, description: Faker::Cat.breed, price: 9.99, image_url: url )

end

