# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting existing records"
Flat.destroy_all

puts "Records deleted"

puts "----------------------------------------------------------------"

puts "Creating 4 new Flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: "Flat 2",
  address: "456 Oak Ave",
  description: "Spacious condo",
  price_per_night: 150,
  number_of_guests: 4
)

Flat.create!(
  name: "Flat 3",
  address: "789 Pine Blvd",
  description: "Modern studio",
  price_per_night: 80,
  number_of_guests: 1
)

Flat.create!(
  name: "Flat 4",
  address: "101 Cedar Rd",
  description: "Luxury penthouse",
  price_per_night: 300,
  number_of_guests: 6
)

puts "Flats seeded successfully!"
