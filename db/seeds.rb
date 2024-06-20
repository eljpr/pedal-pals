puts "Cleaning database..."
Bike.destroy_all
Booking.destroy_all
User.destroy_all

# USERS
puts "Creating users..."
ella = User.create!(first_name: "Ella", last_name: "Pierre", profile: "", email: "ella@email.com", password: "123456")
ben = User.create!(first_name: "Ben", last_name: "Tisdall", profile: "", email: "ben@email.com", password: "123456")
meli = User.create!(first_name: "Meli", last_name: "Pierre", profile: "", email: "meli@email.com", password: "123456")

puts "Users created successfully..."

locations = [
  "London", "Wembley", "Whitechapel", "Southwark", "Bermondsey", "Belgravia", "Notting Hill", "Poplar", "Brixton",
  "Bayswater", "Westbourne Green", "Clerkenwell",
  "Brompton", "Kensington", "Lewisham", "Deptford", "Westiminster", "Lambeth", "Surrey Quays",
  "Finsbury Park", "Farringdon", "Limehouse", "Putney", "Soho", "Shoreditch", "Richmond London", "Fulham", "Acton",
  "Battersea", "Clapham Junction"
]
puts "Creating bikes..."
40.times do
  location = locations.sample
  price_per_day = rand(5..30).round(2)
  category = ["Road bike", "Electric bike", "Hybrid bike", "BMX", "Foldable", "Brompton"].sample
  condition = rand(1..5)
  user = [ben, meli, ella].sample
  Bike.create!(location: location, price_per_day: price_per_day, category: category, condition: condition, user: user)
end

puts "Bicycles created successfully..."
puts "Finished"
