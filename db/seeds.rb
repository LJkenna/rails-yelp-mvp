# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create(name: 'charlotte', address: 'charlotte1', phone_number: '0123', category: 'chinese')
Restaurant.create(name: 'kevin', address: 'kevin1', phone_number: '01234', category: 'italian')
Restaurant.create(name: 'john', address: 'john1', phone_number: '0123', category: 'japanese')
Restaurant.create(name: 'sarah', address: 'sarah1', phone_number: '0123', category: 'french')
Restaurant.create(name: 'sean', address: 'sean1', phone_number: '0123', category: 'belgian')
