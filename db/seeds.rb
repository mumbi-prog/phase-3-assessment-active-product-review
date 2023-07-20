# # This will delete any existing rows from the Product and User tables
# # so you can run the seed file multiple times without having duplicate entries in your database

puts "Deleting old data..."
Product.destroy_all
User.destroy_all

#   puts "Creating users..."
#   user1 = User.create(name: Faker::Name.name)
#   user2 = User.create(name: Faker::Name.name)
#   user3 = User.create(name: Faker::Name.name)

puts "Creating users..."
user1 = User.create(name: "Agatha")
user2 = User.create(name: "Lylla")
user3 = User.create(name: "Jackson")

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
#   *****************************************************************
#   * TODO: create reviews! Remember, a review belongs to a product *
#   * and a review belongs to a user.                              *
#   *****************************************************************
#   Create Reviews Here
Review.create!(
  [
    { user: user2, product: product2, star_rating: 1, comment: "Terrible" },
    { user: user3, product: product1, star_rating: 2, comment: "Meh" },
    { user: user1, product: product3, star_rating: 5, comment: "Amazing product" },
    { user: user1, product: product3, star_rating: 3, comment: "They are okay, I cannot complain" },
    { user: user3, product: product5, star_rating: 1, comment: "Bad quality, absolutely hate" },
    { user: user1, product: product3, star_rating: 4, comment: "These are nice" },
    { user: user3, product: product4, star_rating: 5, comment: "Impressive!!" },
    { user: user2, product: product1, star_rating: 4, comment: "Good quality." }
  ]
)

puts "Seeding done!"

