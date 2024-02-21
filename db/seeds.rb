# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "12345", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "12345", category: "italian"}
balan_deli =  {name: "Balan Deli", address: "Balanstr. 123, Munich", phone_number: "00498712", category: "french"}
losteria =  {name: "L'Osteria", address: "Hauptbahnhofstr. 22, Munich", phone_number: "8674639", category: "italian"}
choco_loco =  {name: "Choco Loco", address: "Ihavenoideawhatitis street 99, Brussels", phone_number: "08712345", category: "belgian"}


[dishoom, pizza_east, balan_deli, losteria, choco_loco].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
