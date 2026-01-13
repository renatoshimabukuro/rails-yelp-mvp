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
Restaurant.create!(name: "Heichinrou", address: "149 Yamashitacho, Naka Ward, Yokohama, Kanagawa", phone_number: "045-681-3001", category: "chinese")
Restaurant.create!(name: "Armani / Ristorante", address: "Ginza Tower, 5-5-4 Ginza, Chuo City, Tokyo", phone_number: "03-6274-7005", category: "italian")
Restaurant.create!(name: "Sukiyabashi Jiro", address: "4-4-5 Ginza, Chuo City, Tokyo", phone_number: "03-3535-3600", category: "japanese")
Restaurant.create!(name: "L'Effervescence", address: "2-26-4 Nishiazabu, Minato City, Tokyo", phone_number: "03--5766-9500", category: "french")
Restaurant.create!(name: "Belgian Brasserie Court", address: "1-4-1 Marunouchi, Chiyoda City, Tokyo", phone_number: "03-5220-0091", category: "belgian")
puts "Finished"
