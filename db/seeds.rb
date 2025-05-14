# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning up database..."
Bookmark.destroy_all
Category.destroy_all
Recipe.destroy_all
puts "Database cleaned"

puts "Creating recipes.."

Recipe.create!(
  name: "Mushroom risotto",
  description: "This mushroom risotto recipe is easy and delicious, perfect for a quick lunch or dinner.",
  image_url: "https://www.recipetineats.com/tachyon/2019/10/Mushroom-Risotto_7.jpg",
  rating: "4.0"
)

Recipe.create!(
  name: "Greek Salad",
  description: "Take Greek salad to the next level by frying the feta until crisp – once you’ve tried it, you’ll never go back..",
  image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/greek_salad_with_crispy_94804_16x9.jpg",
  rating: "5.0"
)

Recipe.create!(
  name: "Frittata",
  description: "This frittata recipe is super flexible. You can use just about anything that's leftover in the fridge.",
  image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/anything-goes_frittata_95480_16x9.jpg",
  rating: "4.5"
)

Recipe.create!(
  name: "Buddha bowl",
  description: "Everyone needs a good buddha bowl recipe, and this one is particularly good.",
  image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/buddha_bowl_82070_16x9.jpg",
  rating: "3.9"
)

puts "Recipes cooked 👩‍🍳"