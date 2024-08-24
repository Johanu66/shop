# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: "Shop Admin",
  # image: File.open(File.join(Rails.root, "/app/assets/images/default_picture.png")),
  email: "shop@admin.com",
  password: "Shop@123456",
  password_confirmation: "Shop@123456",
  confirmed_at: Date.today,
  admin: true
)
