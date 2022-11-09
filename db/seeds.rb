# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'deleting records'
Restaurant.destroy_all

5.times do
  restaurant_seeds = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: Restaurant::CATEGORIES.sample)
  puts restaurant_seeds.name
end


# create_table "restaurants", force: :cascade do |t|
#   t.string "name"
#   t.string "address"
#   t.string "phone_number"
#   t.string "category"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

# create_table "reviews", force: :cascade do |t|
#   t.integer "rating"
#   t.string "content"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.integer "restaurant_id", null: false
#   t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
# end
