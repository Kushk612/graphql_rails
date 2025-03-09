# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# (2..5).each do |g|
#   Airline.create(name: "airline_#{g}", image: "jpeg", slug: "AIRLINE_#{g}", airline_id: "12345#{g}" )
# end

(2..5).each do |g|
  Review.create!(title: "hi there, hope you doing well with airline_#{g}", description: ":) airline_#{g}", score: "#{g}", airline_id: 3 )
end
